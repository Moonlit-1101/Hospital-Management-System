<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="病人姓名" prop="patientName">
        <el-input
          v-model="queryParams.patientName"
          placeholder="请输入病人姓名"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="病人性别" prop="gender">
        <el-input
          v-model="queryParams.gender"
          placeholder="请输入病人性别"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="病人年龄" prop="age">
        <el-input
          v-model="queryParams.age"
          placeholder="请输入病人年龄"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="联系电话" prop="contactNumber">
        <el-input
          v-model="queryParams.contactNumber"
          placeholder="请输入病人联系电话"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="病人状态" prop="patientState">
        <el-input
          v-model="queryParams.patientState"
          placeholder="请输入病人状态"
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
          v-hasPermi="['hospital:hospitalInfo:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['hospital:hospitalInfo:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['hospital:hospitalInfo:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['hospital:hospitalInfo:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="hospitalInfoList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="patientId" />
      <el-table-column label="病人姓名" align="center" prop="patientName" />
      <el-table-column label="病人性别" align="center" prop="gender" />
      <el-table-column label="病人年龄" align="center" prop="age" />
      <el-table-column label="病人联系电话" align="center" prop="contactNumber" />
      <el-table-column label="病人入院日期" align="center" prop="admissionDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.admissionDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="病人出院日期" align="center" prop="dischargeDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.dischargeDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="病人病史" align="center" prop="medicalHistory" />
      <el-table-column label="病人过敏情况" align="center" prop="allergyStatus" />
      <el-table-column label="是否住院治疗" align="center" prop="isAdmission" />
      <el-table-column label="病人头像" align="center" prop="patientPng" width="100">
        <template #default="scope">
          <image-preview :src="scope.row.patientPng" :width="50" :height="50"/>
        </template>
      </el-table-column>
      <el-table-column label="病人状态" align="center" prop="patientState" :formatter="formatStatus" />
      <el-table-column label="治疗方案" align="center" prop="treatmentPlan" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
<!--          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['hospital:hospitalInfo:edit']">修改</el-button>-->
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['hospital:hospitalInfo:remove']">删除</el-button>
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

    <!-- 添加或修改就诊信息对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="hospitalInfoRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="病人姓名" prop="patientName">
          <el-input v-model="form.patientName" placeholder="请输入病人姓名" />
        </el-form-item>
        <el-form-item label="病人性别" prop="gender">
          <el-input v-model="form.gender" placeholder="请输入病人性别" />
        </el-form-item>
        <el-form-item label="病人年龄" prop="age">
          <el-input v-model="form.age" placeholder="请输入病人年龄" />
        </el-form-item>
        <el-form-item label="联系电话" prop="contactNumber">
          <el-input v-model="form.contactNumber" placeholder="请输入病人联系电话" />
        </el-form-item>

        <el-form-item label="病人病史" prop="medicalHistory">
          <el-input v-model="form.medicalHistory" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="过敏情况" prop="allergyStatus">
          <el-input v-model="form.allergyStatus" placeholder="请输入病人过敏情况" />
        </el-form-item>

        <el-form-item label="病人头像" prop="patientPng">
          <image-upload v-model="form.patientPng"/>
        </el-form-item>
<!--        <el-form-item label="病人状态" prop="patientState">
          <el-input v-model="form.patientState" placeholder="请输入病人状态" />
        </el-form-item>-->
<!--          <el-form-item label="是否住院治疗" prop="isAdmission" label-width="100px">
              <el-select v-model="form.isAdmission" placeholder="是否住院治疗" @change="handleQuery"  style="width: 200px">
                  <el-option label="是" value="是"></el-option>
                  <el-option label="否" value="否"></el-option>

              </el-select>

          </el-form-item>-->
        <el-form-item v-if="form.isAdmission === '否'" label="治疗方案" prop="treatmentPlan">
          <el-input v-model="form.treatmentPlan" placeholder="请输入治疗方案" />
        </el-form-item>
          <el-form-item v-if="form.isAdmission === '是'" label="入院日期" prop="admissionDate">
              <el-date-picker clearable
                              v-model="form.admissionDate"
                              type="date"
                              value-format="YYYY-MM-DD"
                              placeholder="请选择病人入院日期">
              </el-date-picker>
          </el-form-item>
<!--          <el-form-item label="出院日期" prop="dischargeDate">
              <el-date-picker clearable
                              v-model="form.dischargeDate"
                              type="date"
                              value-format="YYYY-MM-DD"
                              placeholder="请选择病人出院日期">
              </el-date-picker>
          </el-form-item>-->
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

<script setup name="HospitalInfo">
import { listHospitalInfo, getHospitalInfo, delHospitalInfo, addHospitalInfo, updateHospitalInfo } from "@/api/hospital/hospitalInfo";

const { proxy } = getCurrentInstance();

const hospitalInfoList = ref([]);
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
    patientName: null,
    gender: null,
    age: null,
    contactNumber: null,
    patientState: null,
  },
  rules: {
    patientName: [
      { required: true, message: "病人姓名不能为空", trigger: "blur" },
      { pattern: /^[\u4e00-\u9fa5]+$/, message: "姓名只能包含汉字", trigger: "blur" }
    ],
    gender: [
      { required: true, message: "病人性别不能为空", trigger: "blur" },
      { pattern: /^[男女]$/, message: "性别只能是男或女", trigger: "blur" }
    ],
    contactNumber: [
      { required: true, message: "联系电话不能为空", trigger: "blur" },
      { pattern: /^1[3-9]\d{9}$/, message: "请输入有效的手机号码", trigger: "blur" }
    ]
  }
});

const { queryParams, form, rules } = toRefs(data);
function formatStatus(row, column, cellValue) {
    if (cellValue == 0) {
        return '待诊';
    } else if (cellValue == 1) {
        return '住院中';
    }else if (cellValue == 2) {
        return '完成';
    }
    return cellValue;
}
/** 查询就诊信息列表 */
function getList() {
  loading.value = true;
  listHospitalInfo(queryParams.value).then(response => {
    hospitalInfoList.value = response.rows;
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
    patientId: null,
    patientName: null,
    gender: null,
    age: null,
    contactNumber: null,
    admissionDate: null,
    dischargeDate: null,
    medicalHistory: null,
    allergyStatus: null,
    isAdmission: null,
    patientPng: null,
    patientState: null,
    treatmentPlan: null
  };
  proxy.resetForm("hospitalInfoRef");
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
  ids.value = selection.map(item => item.patientId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加就诊信息";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _patientId = row.patientId || ids.value
  getHospitalInfo(_patientId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改就诊信息";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["hospitalInfoRef"].validate(valid => {
    if (valid) {
      if (form.value.patientId != null) {
        updateHospitalInfo(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addHospitalInfo(form.value).then(response => {
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
  const _patientIds = row.patientId || ids.value;
  proxy.$modal.confirm('是否确认删除就诊信息编号为"' + _patientIds + '"的数据项？').then(function() {
    return delHospitalInfo(_patientIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('hospital/hospitalInfo/export', {
    ...queryParams.value
  }, `hospitalInfo_${new Date().getTime()}.xlsx`)
}

getList();
</script>
