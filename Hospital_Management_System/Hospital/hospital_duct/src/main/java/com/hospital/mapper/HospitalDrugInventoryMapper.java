package com.hospital.mapper;

import java.util.List;
import com.hospital.domain.HospitalDrugInventory;

/**
 * 库存药品Mapper接口
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
public interface HospitalDrugInventoryMapper 
{
    /**
     * 查询库存药品
     * 
     * @param drugId 库存药品主键
     * @return 库存药品
     */
    public HospitalDrugInventory selectHospitalDrugInventoryByDrugId(Long drugId);

    /**
     * 查询库存药品列表
     * 
     * @param hospitalDrugInventory 库存药品
     * @return 库存药品集合
     */
    public List<HospitalDrugInventory> selectHospitalDrugInventoryList(HospitalDrugInventory hospitalDrugInventory);

    /**
     * 新增库存药品
     * 
     * @param hospitalDrugInventory 库存药品
     * @return 结果
     */
    public int insertHospitalDrugInventory(HospitalDrugInventory hospitalDrugInventory);

    /**
     * 修改库存药品
     * 
     * @param hospitalDrugInventory 库存药品
     * @return 结果
     */
    public int updateHospitalDrugInventory(HospitalDrugInventory hospitalDrugInventory);

    /**
     * 删除库存药品
     * 
     * @param drugId 库存药品主键
     * @return 结果
     */
    public int deleteHospitalDrugInventoryByDrugId(Long drugId);

    /**
     * 批量删除库存药品
     * 
     * @param drugIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHospitalDrugInventoryByDrugIds(Long[] drugIds);
}
