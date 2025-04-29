<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
<!--      <el-form-item label="关联的病人ID" prop="patientId">
        <el-input
          v-model="queryParams.patientId"
          placeholder="请输入关联的病人ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>-->
      <el-form-item label="病人姓名" prop="patientName">
        <el-input
          v-model="queryParams.patientName"
          placeholder="请输入病人姓名"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="护理日期" prop="nursingDate">
        <el-date-picker clearable
          v-model="queryParams.nursingDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择护理日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="护士姓名" prop="nurseName">
        <el-input
          v-model="queryParams.nurseName"
          placeholder="护士姓名"
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
          v-hasPermi="['hospital:hospitalRecord:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['hospital:hospitalRecord:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['hospital:hospitalRecord:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['hospital:hospitalRecord:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="hospitalRecordList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="recordId" />
<!--      <el-table-column label="关联的病人ID" align="center" prop="patientId" />-->
      <el-table-column label="病人姓名" align="center" prop="patientName" />
      <el-table-column label="护理日期" align="center" prop="nursingDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.nursingDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="护理内容" align="center" prop="nursingContent" />
      <el-table-column label="负责护理的护士姓名" align="center" prop="nurseName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['hospital:hospitalRecord:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['hospital:hospitalRecord:remove']">删除</el-button>
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

    <!-- 添加或修改护理日志对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="hospitalRecordRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="关联的病人ID" prop="patientId">
          <el-input v-model="form.patientId" placeholder="请输入关联的病人ID" />
        </el-form-item>
        <el-form-item label="病人姓名" prop="patientName">
          <el-input v-model="form.patientName" placeholder="请输入病人姓名" />
        </el-form-item>
        <el-form-item label="护理日期" prop="nursingDate">
          <el-date-picker clearable
            v-model="form.nursingDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择护理日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="护理内容">
          <editor v-model="form.nursingContent" :min-height="192"/>
        </el-form-item>
        <el-form-item label="负责护理的护士姓名" prop="nurseName">
          <el-input v-model="form.nurseName" placeholder="请输入负责护理的护士姓名" />
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

<script setup name="HospitalRecord">
import { listHospitalRecord, getHospitalRecord, delHospitalRecord, addHospitalRecord, updateHospitalRecord } from "@/api/hospital/hospitalRecord";

const { proxy } = getCurrentInstance();

const hospitalRecordList = ref([]);
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
    patientId: null,
    patientName: null,
    nursingDate: null,
    nursingContent: null,
    nurseName: null
  },
  rules: {
    patientId: [
      { required: true, message: "关联的病人ID不能为空", trigger: "blur" }
    ],
    nursingDate: [
      { required: true, message: "护理日期不能为空", trigger: "blur" }
    ],
    nursingContent: [
      { required: true, message: "护理内容不能为空", trigger: "blur" }
    ],
    nurseName: [
      { required: true, message: "负责护理的护士姓名不能为空", trigger: "blur" }
    ]
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询护理日志列表 */
function getList() {
  loading.value = true;
  listHospitalRecord(queryParams.value).then(response => {
    hospitalRecordList.value = response.rows;
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
    recordId: null,
    patientId: null,
    patientName: null,
    nursingDate: null,
    nursingContent: null,
    nurseName: null
  };
  proxy.resetForm("hospitalRecordRef");
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
  ids.value = selection.map(item => item.recordId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加护理日志";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _recordId = row.recordId || ids.value
  getHospitalRecord(_recordId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改护理日志";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["hospitalRecordRef"].validate(valid => {
    if (valid) {
      if (form.value.recordId != null) {
        updateHospitalRecord(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addHospitalRecord(form.value).then(response => {
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
  const _recordIds = row.recordId || ids.value;
  proxy.$modal.confirm('是否确认删除护理日志编号为"' + _recordIds + '"的数据项？').then(function() {
    return delHospitalRecord(_recordIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('hospital/hospitalRecord/export', {
    ...queryParams.value
  }, `hospitalRecord_${new Date().getTime()}.xlsx`)
}

getList();
</script>
