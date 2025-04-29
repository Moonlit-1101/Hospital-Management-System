package com.hospital.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.hospital.common.annotation.Excel;
import com.hospital.common.core.domain.BaseEntity;

/**
 * 就诊信息对象 hospital_patient_info
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
public class HospitalPatientInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long patientId;

    /** 病人姓名 */
    @Excel(name = "病人姓名")
    private String patientName;

    /** 病人性别 */
    @Excel(name = "病人性别")
    private String gender;

    /** 病人年龄 */
    @Excel(name = "病人年龄")
    private Long age;

    /** 病人联系电话 */
    @Excel(name = "病人联系电话")
    private String contactNumber;

    /** 病人入院日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "病人入院日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date admissionDate;

    /** 病人出院日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "病人出院日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dischargeDate;

    /** 病人病史 */
    @Excel(name = "病人病史")
    private String medicalHistory;

    /** 病人过敏情况 */
    @Excel(name = "病人过敏情况")
    private String allergyStatus;

    /** 是否住院治疗 */
    @Excel(name = "是否住院治疗")
    private String isAdmission;

    /** 病人头像 */
    @Excel(name = "病人头像")
    private String patientPng;

    /** 病人状态 */
    @Excel(name = "病人状态")
    private String patientState;

    /** 治疗方案 */
    @Excel(name = "治疗方案")
    private String treatmentPlan;

    public void setPatientId(Long patientId) 
    {
        this.patientId = patientId;
    }

    public Long getPatientId() 
    {
        return patientId;
    }
    public void setPatientName(String patientName) 
    {
        this.patientName = patientName;
    }

    public String getPatientName() 
    {
        return patientName;
    }
    public void setGender(String gender) 
    {
        this.gender = gender;
    }

    public String getGender() 
    {
        return gender;
    }
    public void setAge(Long age) 
    {
        this.age = age;
    }

    public Long getAge() 
    {
        return age;
    }
    public void setContactNumber(String contactNumber) 
    {
        this.contactNumber = contactNumber;
    }

    public String getContactNumber() 
    {
        return contactNumber;
    }
    public void setAdmissionDate(Date admissionDate) 
    {
        this.admissionDate = admissionDate;
    }

    public Date getAdmissionDate() 
    {
        return admissionDate;
    }
    public void setDischargeDate(Date dischargeDate) 
    {
        this.dischargeDate = dischargeDate;
    }

    public Date getDischargeDate() 
    {
        return dischargeDate;
    }
    public void setMedicalHistory(String medicalHistory) 
    {
        this.medicalHistory = medicalHistory;
    }

    public String getMedicalHistory() 
    {
        return medicalHistory;
    }
    public void setAllergyStatus(String allergyStatus) 
    {
        this.allergyStatus = allergyStatus;
    }

    public String getAllergyStatus() 
    {
        return allergyStatus;
    }
    public void setIsAdmission(String isAdmission) 
    {
        this.isAdmission = isAdmission;
    }

    public String getIsAdmission() 
    {
        return isAdmission;
    }
    public void setPatientPng(String patientPng) 
    {
        this.patientPng = patientPng;
    }

    public String getPatientPng() 
    {
        return patientPng;
    }
    public void setPatientState(String patientState) 
    {
        this.patientState = patientState;
    }

    public String getPatientState() 
    {
        return patientState;
    }
    public void setTreatmentPlan(String treatmentPlan) 
    {
        this.treatmentPlan = treatmentPlan;
    }

    public String getTreatmentPlan() 
    {
        return treatmentPlan;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("patientId", getPatientId())
            .append("patientName", getPatientName())
            .append("gender", getGender())
            .append("age", getAge())
            .append("contactNumber", getContactNumber())
            .append("admissionDate", getAdmissionDate())
            .append("dischargeDate", getDischargeDate())
            .append("medicalHistory", getMedicalHistory())
            .append("allergyStatus", getAllergyStatus())
            .append("isAdmission", getIsAdmission())
            .append("patientPng", getPatientPng())
            .append("patientState", getPatientState())
            .append("treatmentPlan", getTreatmentPlan())
            .toString();
    }
}
