package com.hospital.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.hospital.common.annotation.Excel;
import com.hospital.common.core.domain.BaseEntity;

/**
 * 药方管理对象 hospital_prescription_management
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
public class HospitalPrescriptionManagement extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 药方id */
    private Long prescriptionId;

    /** 药方剂量 */
    @Excel(name = "药方剂量")
    private String dosage;

    /** 药方使用说明 */
    @Excel(name = "药方使用说明")
    private String usageInstructions;

    /** 药方开具日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "药方开具日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date prescriptionDate;

    /** 药方适用症状 */
    @Excel(name = "药方适用症状")
    private String applicableSymptoms;

    /** 医生姓名 */
    @Excel(name = "医生姓名")
    private String doctorName;

    public void setPrescriptionId(Long prescriptionId) 
    {
        this.prescriptionId = prescriptionId;
    }

    public Long getPrescriptionId() 
    {
        return prescriptionId;
    }
    public void setDosage(String dosage) 
    {
        this.dosage = dosage;
    }

    public String getDosage() 
    {
        return dosage;
    }
    public void setUsageInstructions(String usageInstructions) 
    {
        this.usageInstructions = usageInstructions;
    }

    public String getUsageInstructions() 
    {
        return usageInstructions;
    }
    public void setPrescriptionDate(Date prescriptionDate) 
    {
        this.prescriptionDate = prescriptionDate;
    }

    public Date getPrescriptionDate() 
    {
        return prescriptionDate;
    }
    public void setApplicableSymptoms(String applicableSymptoms) 
    {
        this.applicableSymptoms = applicableSymptoms;
    }

    public String getApplicableSymptoms() 
    {
        return applicableSymptoms;
    }
    public void setDoctorName(String doctorName) 
    {
        this.doctorName = doctorName;
    }

    public String getDoctorName() 
    {
        return doctorName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("prescriptionId", getPrescriptionId())
            .append("dosage", getDosage())
            .append("usageInstructions", getUsageInstructions())
            .append("prescriptionDate", getPrescriptionDate())
            .append("applicableSymptoms", getApplicableSymptoms())
            .append("doctorName", getDoctorName())
            .toString();
    }
}
