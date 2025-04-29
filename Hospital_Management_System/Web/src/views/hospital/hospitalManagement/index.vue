<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="药方剂量" prop="dosage">
        <el-input
          v-model="queryParams.dosage"
          placeholder="请输入药方剂量"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="药方开具日期" prop="prescriptionDate" label-width="120px">
        <el-date-picker clearable
          v-model="queryParams.prescriptionDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择药方开具日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="药方适用症状" prop="applicableSymptoms" label-width="120px">
        <el-input
          v-model="queryParams.applicableSymptoms"
          placeholder="请输入药方适用症状"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="医生姓名" prop="doctorName">
        <el-input
          v-model="queryParams.doctorName"
          placeholder="请输入医生姓名"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
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
          v-hasPermi="['hospital:hospitalManagement:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['hospital:hospitalManagement:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['hospital:hospitalManagement:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['hospital:hospitalManagement:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="hospitalManagementList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="药方id" align="center" prop="prescriptionId" />
      <el-table-column label="药方剂量" align="center" prop="dosage" />
      <el-table-column label="药方使用说明" align="center" prop="usageInstructions" />
      <el-table-column label="药方开具日期" align="center" prop="prescriptionDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.prescriptionDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="药方适用症状" align="center" prop="applicableSymptoms" />
      <el-table-column label="医生姓名" align="center" prop="doctorName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['hospital:hospitalManagement:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['hospital:hospitalManagement:remove']">删除</el-button>
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

    <!-- 添加或修改药方管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="hospitalManagementRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="药方剂量" prop="dosage">
          <el-input v-model="form.dosage" placeholder="请输入药方剂量" />
        </el-form-item>
        <el-form-item label="使用说明" prop="usageInstructions">
          <el-input v-model="form.usageInstructions" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="开具日期" prop="prescriptionDate">
          <el-date-picker clearable
            v-model="form.prescriptionDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择药方开具日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="适用症状" prop="applicableSymptoms">
          <el-input v-model="form.applicableSymptoms" placeholder="请输入药方适用症状" />
        </el-form-item>
        <el-form-item label="医生姓名" prop="doctorName">
          <el-input v-model="form.doctorName" placeholder="请输入医生姓名" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup name="HospitalManagement">
import { listHospitalManagement, getHospitalManagement, delHospitalManagement, addHospitalManagement, updateHospitalManagement } from "@/api/hospital/hospitalManagement";

const { proxy } = getCurrentInstance();

const hospitalManagementList = ref([]);
const open = ref(false);
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
    dosage: null,
    usageInstructions: null,
    prescriptionDate: null,
    applicableSymptoms: null,
    doctorName: null
  },
  rules: {
    dosage: [
      { required: true, message: "药方剂量不能为空", trigger: "blur" }
    ],
    usageInstructions: [
      { required: true, message: "药方使用说明不能为空", trigger: "blur" }
    ],
    prescriptionDate: [
      { required: true, message: "药方开具日期不能为空", trigger: "blur" }
    ],
    doctorName: [
      { required: true, message: "医生姓名不能为空", trigger: "blur" }
    ]
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询药方管理列表 */
function getList() {
  loading.value = true;
  listHospitalManagement(queryParams.value).then(response => {
    hospitalManagementList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

// 取消按钮
function cancel() {
  open.value = false;
  reset();
}

// 表单重置
function reset() {
  form.value = {
    prescriptionId: null,
    dosage: null,
    usageInstructions: null,
    prescriptionDate: null,
    applicableSymptoms: null,
    doctorName: null
  };
  proxy.resetForm("hospitalManagementRef");
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
  ids.value = selection.map(item => item.prescriptionId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加药方管理";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _prescriptionId = row.prescriptionId || ids.value
  getHospitalManagement(_prescriptionId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改药方管理";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["hospitalManagementRef"].validate(valid => {
    if (valid) {
      if (form.value.prescriptionId != null) {
        updateHospitalManagement(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addHospitalManagement(form.value).then(response => {
          proxy.$modal.msgSuccess("新增成功");
          open.value = false;
          getList();
        });
      }
    }
  });
}

/** 删除按钮操作 */
function handleDelete(row) {
  const _prescriptionIds = row.prescriptionId || ids.value;
  proxy.$modal.confirm('是否确认删除药方管理编号为"' + _prescriptionIds + '"的数据项？').then(function() {
    return delHospitalManagement(_prescriptionIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('hospital/hospitalManagement/export', {
    ...queryParams.value
  }, `hospitalManagement_${new Date().getTime()}.xlsx`)
}

getList();
</script>
