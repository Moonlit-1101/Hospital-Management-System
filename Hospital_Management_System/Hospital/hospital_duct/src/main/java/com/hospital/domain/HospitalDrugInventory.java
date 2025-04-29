package com.hospital.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.hospital.common.annotation.Excel;
import com.hospital.common.core.domain.BaseEntity;

/**
 * 库存药品对象 hospital_drug_inventory
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
public class HospitalDrugInventory extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 药品的id */
    private Long drugId;

    /** 药品名称 */
    @Excel(name = "药品名称")
    private String drugName;

    /** 药品规格 */
    @Excel(name = "药品规格")
    private String specification;

    /** 药品单价 */
    @Excel(name = "药品单价")
    private BigDecimal unitPrice;

    /** 药品适用症状 */
    @Excel(name = "药品适用症状")
    private String applicableSymptoms;

    /** 药品库存数量 */
    @Excel(name = "药品库存数量")
    private Long stockQuantity;

    /** 药品生产日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "药品生产日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date productionDate;

    /** 药品过期日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "药品过期日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date expirationDate;

    /** 说明书 */
    @Excel(name = "说明书")
    private String directions;

    public void setDrugId(Long drugId) 
    {
        this.drugId = drugId;
    }

    public Long getDrugId() 
    {
        return drugId;
    }
    public void setDrugName(String drugName) 
    {
        this.drugName = drugName;
    }

    public String getDrugName() 
    {
        return drugName;
    }
    public void setSpecification(String specification) 
    {
        this.specification = specification;
    }

    public String getSpecification() 
    {
        return specification;
    }
    public void setUnitPrice(BigDecimal unitPrice) 
    {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getUnitPrice() 
    {
        return unitPrice;
    }
    public void setApplicableSymptoms(String applicableSymptoms) 
    {
        this.applicableSymptoms = applicableSymptoms;
    }

    public String getApplicableSymptoms() 
    {
        return applicableSymptoms;
    }
    public void setStockQuantity(Long stockQuantity) 
    {
        this.stockQuantity = stockQuantity;
    }

    public Long getStockQuantity() 
    {
        return stockQuantity;
    }
    public void setProductionDate(Date productionDate) 
    {
        this.productionDate = productionDate;
    }

    public Date getProductionDate() 
    {
        return productionDate;
    }
    public void setExpirationDate(Date expirationDate) 
    {
        this.expirationDate = expirationDate;
    }

    public Date getExpirationDate() 
    {
        return expirationDate;
    }
    public void setDirections(String directions) 
    {
        this.directions = directions;
    }

    public String getDirections() 
    {
        return directions;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("drugId", getDrugId())
            .append("drugName", getDrugName())
            .append("specification", getSpecification())
            .append("unitPrice", getUnitPrice())
            .append("applicableSymptoms", getApplicableSymptoms())
            .append("stockQuantity", getStockQuantity())
            .append("productionDate", getProductionDate())
            .append("expirationDate", getExpirationDate())
            .append("directions", getDirections())
            .toString();
    }
}
