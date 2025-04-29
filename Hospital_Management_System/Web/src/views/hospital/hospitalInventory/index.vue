<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="药品名称" prop="drugName">
        <el-input
          v-model="queryParams.drugName"
          placeholder="请输入药品名称"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="药品规格" prop="specification">
        <el-input
          v-model="queryParams.specification"
          placeholder="请输入药品规格"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="药品单价" prop="unitPrice">
        <el-input
          v-model="queryParams.unitPrice"
          placeholder="请输入药品单价"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="适用症状" prop="applicableSymptoms">
        <el-input
          v-model="queryParams.applicableSymptoms"
          placeholder="请输入药品适用症状"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
<!--      <el-form-item label="药品库存数量" prop="stockQuantity">
        <el-input
          v-model="queryParams.stockQuantity"
          placeholder="请输入药品库存数量"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="药品生产日期" prop="productionDate">
        <el-date-picker clearable
          v-model="queryParams.productionDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择药品生产日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="药品过期日期" prop="expirationDate">
        <el-date-picker clearable
          v-model="queryParams.expirationDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择药品过期日期">
        </el-date-picker>
      </el-form-item>-->
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
          v-hasPermi="['hospital:hospitalInventory:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['hospital:hospitalInventory:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['hospital:hospitalInventory:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['hospital:hospitalInventory:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="hospitalInventoryList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="药品的id" align="center" prop="drugId" />
      <el-table-column label="药品名称" align="center" prop="drugName" />
      <el-table-column label="药品规格" align="center" prop="specification" />
      <el-table-column label="药品单价" align="center" prop="unitPrice" />
      <el-table-column label="药品适用症状" align="center" prop="applicableSymptoms" />
      <el-table-column label="药品库存数量" align="center" prop="stockQuantity" />
      <el-table-column label="药品生产日期" align="center" prop="productionDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.productionDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="药品过期日期" align="center" prop="expirationDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.expirationDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
        <el-table-column label="说明书" align="center" prop="directions" >
            <template #default="scope">
                <el-link type="primary" @click="openAttachment(scope.row.directions)">
                    {{openAttachment2(scope.row.directions)}}
                </el-link>
            </template>
        </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate2(scope.row)" v-hasPermi="['hospital:hospitalInventory:editYao']">取药</el-button>
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['hospital:hospitalInventory:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['hospital:hospitalInventory:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改库存药品对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="hospitalInventoryRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="药品名称" prop="drugName">
          <el-input v-model="form.drugName" placeholder="请输入药品名称" />
        </el-form-item>
        <el-form-item label="药品规格" prop="specification">
          <el-input v-model="form.specification" placeholder="请输入药品规格" />
        </el-form-item>
        <el-form-item label="药品单价" prop="unitPrice">
          <el-input v-model="form.unitPrice" placeholder="请输入药品单价" />
        </el-form-item>
        <el-form-item label="适用症状" prop="applicableSymptoms">
          <el-input v-model="form.applicableSymptoms" placeholder="请输入药品适用症状" />
        </el-form-item>
        <el-form-item label="库存数量" prop="stockQuantity">
          <el-input v-model="form.stockQuantity" placeholder="请输入药品库存数量" />
        </el-form-item>
        <el-form-item label="生产日期" prop="productionDate">
          <el-date-picker clearable
            v-model="form.productionDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择药品生产日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="过期日期" prop="expirationDate">
          <el-date-picker clearable
            v-model="form.expirationDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择药品过期日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="说明书" prop="directions">
          <file-upload v-model="form.directions"/>
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>

      <!-- 添加或修改库存药品对话框 -->
      <el-dialog :title="title" v-model="open2" width="500px" append-to-body>
          <el-form ref="hospitalInventoryRef" :model="form" :rules="rules" label-width="80px">
              <el-form-item label="药品名称" prop="drugName" >
                  <el-input v-model="form.drugName" placeholder="请输入药品名称" disabled/>
              </el-form-item>
<!--              <el-form-item label="药品规格" prop="specification">
                  <el-input v-model="form.specification" placeholder="请输入药品规格" />
              </el-form-item>-->
              <el-form-item label="药品单价" prop="unitPrice" >
                  <el-input v-model="form.unitPrice" placeholder="请输入药品单价" disabled/>
              </el-form-item>
              <el-form-item label="适用症状" prop="applicableSymptoms" >
                  <el-input v-model="form.applicableSymptoms" placeholder="请输入药品适用症状" disabled/>
              </el-form-item>


              <el-form-item label="药品过期日期" prop="expirationDate" label-width="120px" >
                  <el-date-picker clearable
                                  v-model="form.expirationDate"
                                  type="date"
                                  value-format="YYYY-MM-DD"
                                  placeholder="请选择药品过期日期" disabled>
                  </el-date-picker>
              </el-form-item>
              <el-form-item label="取出数量" prop="stockQuantity">
                  <el-input v-model="form.stockQuantity" placeholder="请输入药品取出数量" />
              </el-form-item>
          </el-form>
          <template #footer>
              <div class="dialog-footer">
                  <el-button type="primary" @click="submitForm2">确 定</el-button>
                  <el-button @click="cancel">取 消</el-button>
              </div>
          </template>
      </el-dialog>
  </div>
</template>

<script setup name="HospitalInventory">
import { listHospitalInventory, getHospitalInventory, delHospitalInventory, addHospitalInventory, updateHospitalInventory , quUpdateHospitalInventory } from "@/api/hospital/hospitalInventory";

const { proxy } = getCurrentInstance();

const hospitalInventoryList = ref([]);
const open = ref(false);
const open2 = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");

const data = reactive({
  form: {},
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    drugName: null,
    specification: null,
    unitPrice: null,
    applicableSymptoms: null,
    stockQuantity: null,
    productionDate: null,
    expirationDate: null,
    directions: null
  },
  rules: {
    drugName: [
      { required: true, message: "药品名称不能为空", trigger: "blur" }
    ],
    unitPrice: [
      { required: true, message: "药品单价不能为空", trigger: "blur" }
    ],
    stockQuantity: [
      { required: true, message: "药品库存数量不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询库存药品列表 */
function getList() {
  loading.value = true;
  listHospitalInventory(queryParams.value).then(response => {
    hospitalInventoryList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}
function openAttachment(attachmentPath) {
    const baseUrl = 'http://localhost:8080';
    const fullUrl = baseUrl + attachmentPath;
    window.open(fullUrl, '_blank');
}
function openAttachment2(attachmentPath) {
    if (attachmentPath) {
        return "点击查看说明书"
    }

}
// 取消按钮
function cancel() {
  open.value = false;
  open2.value = false;
  reset();
}

// 表单重置
function reset() {
  form.value = {
    drugId: null,
    drugName: null,
    specification: null,
    unitPrice: null,
    applicableSymptoms: null,
    stockQuantity: null,
    productionDate: null,
    expirationDate: null,
    directions: null
  };
  proxy.resetForm("hospitalInventoryRef");
}

/** 搜索按钮操作 */
function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
}

/** 重置按钮操作 */
function resetQuery() {
  proxy.resetForm("queryRef");
  handleQuery();
}

// 多选框选中数据
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.drugId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加库存药品";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _drugId = row.drugId || ids.value
  getHospitalInventory(_drugId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改库存药品";
  });
}
function handleUpdate2(row) {
    reset();
    const _drugId = row.drugId || ids.value
    getHospitalInventory(_drugId).then(response => {
        form.value = response.data;
        open2.value = true;
        title.value = "修改库存药品";
    });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["hospitalInventoryRef"].validate(valid => {
    if (valid) {
      if (form.value.drugId != null) {
        updateHospitalInventory(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addHospitalInventory(form.value).then(response => {
          proxy.$modal.msgSuccess("新增成功");
          open.value = false;
          getList();
        });
      }
    }
  });
}
function submitForm2() {
            if (form.value.drugId != null) {
                quUpdateHospitalInventory(form.value).then(response => {
                    proxy.$modal.msgSuccess("取药成功");

                    getList();
                });
            }
    open2.value = false;
}
/** 删除按钮操作 */
function handleDelete(row) {
  const _drugIds = row.drugId || ids.value;
  proxy.$modal.confirm('是否确认删除库存药品编号为"' + _drugIds + '"的数据项？').then(function() {
    return delHospitalInventory(_drugIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('hospital/hospitalInventory/export', {
    ...queryParams.value
  }, `hospitalInventory_${new Date().getTime()}.xlsx`)
}

getList();
</script>
