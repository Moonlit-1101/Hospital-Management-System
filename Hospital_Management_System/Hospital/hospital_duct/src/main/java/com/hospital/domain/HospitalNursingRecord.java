package com.hospital.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.hospital.common.annotation.Excel;
import com.hospital.common.core.domain.BaseEntity;

/**
 * 护理日志对象 hospital_nursing_record
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
public class HospitalNursingRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long recordId;

    /** 关联的病人ID */
    @Excel(name = "关联的病人ID")
    private Long patientId;

    /** 病人姓名 */
    @Excel(name = "病人姓名")
    private String patientName;

    /** 护理日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "护理日期", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date nursingDate;

    /** 护理内容 */
    @Excel(name = "护理内容")
    private String nursingContent;

    /** 负责护理的护士姓名 */
    @Excel(name = "负责护理的护士姓名")
    private String nurseName;

    public void setRecordId(Long recordId) 
    {
        this.recordId = recordId;
    }

    public Long getRecordId() 
    {
        return recordId;
    }
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
    public void setNursingDate(Date nursingDate) 
    {
        this.nursingDate = nursingDate;
    }

    public Date getNursingDate() 
    {
        return nursingDate;
    }
    public void setNursingContent(String nursingContent) 
    {
        this.nursingContent = nursingContent;
    }

    public String getNursingContent() 
    {
        return nursingContent;
    }
    public void setNurseName(String nurseName) 
    {
        this.nurseName = nurseName;
    }

    public String getNurseName() 
    {
        return nurseName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("recordId", getRecordId())
            .append("patientId", getPatientId())
            .append("patientName", getPatientName())
            .append("nursingDate", getNursingDate())
            .append("nursingContent", getNursingContent())
            .append("nurseName", getNurseName())
            .toString();
    }
}
