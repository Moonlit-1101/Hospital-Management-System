package com.hospital.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hospital.mapper.HospitalDrugInventoryMapper;
import com.hospital.domain.HospitalDrugInventory;
import com.hospital.service.IHospitalDrugInventoryService;

/**
 * 库存药品Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
@Service
public class HospitalDrugInventoryServiceImpl implements IHospitalDrugInventoryService 
{
    @Autowired
    private HospitalDrugInventoryMapper hospitalDrugInventoryMapper;

    /**
     * 查询库存药品
     * 
     * @param drugId 库存药品主键
     * @return 库存药品
     */
    @Override
    public HospitalDrugInventory selectHospitalDrugInventoryByDrugId(Long drugId)
    {
        return hospitalDrugInventoryMapper.selectHospitalDrugInventoryByDrugId(drugId);
    }

    /**
     * 查询库存药品列表
     * 
     * @param hospitalDrugInventory 库存药品
     * @return 库存药品
     */
    @Override
    public List<HospitalDrugInventory> selectHospitalDrugInventoryList(HospitalDrugInventory hospitalDrugInventory)
    {
        return hospitalDrugInventoryMapper.selectHospitalDrugInventoryList(hospitalDrugInventory);
    }

    /**
     * 新增库存药品
     * 
     * @param hospitalDrugInventory 库存药品
     * @return 结果
     */
    @Override
    public int insertHospitalDrugInventory(HospitalDrugInventory hospitalDrugInventory)
    {
        return hospitalDrugInventoryMapper.insertHospitalDrugInventory(hospitalDrugInventory);
    }

    /**
     * 修改库存药品
     * 
     * @param hospitalDrugInventory 库存药品
     * @return 结果
     */
    @Override
    public int updateHospitalDrugInventory(HospitalDrugInventory hospitalDrugInventory)
    {
        return hospitalDrugInventoryMapper.updateHospitalDrugInventory(hospitalDrugInventory);
    }

    /**
     * 批量删除库存药品
     * 
     * @param drugIds 需要删除的库存药品主键
     * @return 结果
     */
    @Override
    public int deleteHospitalDrugInventoryByDrugIds(Long[] drugIds)
    {
        return hospitalDrugInventoryMapper.deleteHospitalDrugInventoryByDrugIds(drugIds);
    }

    /**
     * 删除库存药品信息
     * 
     * @param drugId 库存药品主键
     * @return 结果
     */
    @Override
    public int deleteHospitalDrugInventoryByDrugId(Long drugId)
    {
        return hospitalDrugInventoryMapper.deleteHospitalDrugInventoryByDrugId(drugId);
    }
}
