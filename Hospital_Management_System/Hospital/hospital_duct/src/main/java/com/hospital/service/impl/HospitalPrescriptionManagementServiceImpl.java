package com.hospital.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hospital.mapper.HospitalPrescriptionManagementMapper;
import com.hospital.domain.HospitalPrescriptionManagement;
import com.hospital.service.IHospitalPrescriptionManagementService;

/**
 * 药方管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
@Service
public class HospitalPrescriptionManagementServiceImpl implements IHospitalPrescriptionManagementService 
{
    @Autowired
    private HospitalPrescriptionManagementMapper hospitalPrescriptionManagementMapper;

    /**
     * 查询药方管理
     * 
     * @param prescriptionId 药方管理主键
     * @return 药方管理
     */
    @Override
    public HospitalPrescriptionManagement selectHospitalPrescriptionManagementByPrescriptionId(Long prescriptionId)
    {
        return hospitalPrescriptionManagementMapper.selectHospitalPrescriptionManagementByPrescriptionId(prescriptionId);
    }

    /**
     * 查询药方管理列表
     * 
     * @param hospitalPrescriptionManagement 药方管理
     * @return 药方管理
     */
    @Override
    public List<HospitalPrescriptionManagement> selectHospitalPrescriptionManagementList(HospitalPrescriptionManagement hospitalPrescriptionManagement)
    {
        return hospitalPrescriptionManagementMapper.selectHospitalPrescriptionManagementList(hospitalPrescriptionManagement);
    }

    /**
     * 新增药方管理
     * 
     * @param hospitalPrescriptionManagement 药方管理
     * @return 结果
     */
    @Override
    public int insertHospitalPrescriptionManagement(HospitalPrescriptionManagement hospitalPrescriptionManagement)
    {
        return hospitalPrescriptionManagementMapper.insertHospitalPrescriptionManagement(hospitalPrescriptionManagement);
    }

    /**
     * 修改药方管理
     * 
     * @param hospitalPrescriptionManagement 药方管理
     * @return 结果
     */
    @Override
    public int updateHospitalPrescriptionManagement(HospitalPrescriptionManagement hospitalPrescriptionManagement)
    {
        return hospitalPrescriptionManagementMapper.updateHospitalPrescriptionManagement(hospitalPrescriptionManagement);
    }

    /**
     * 批量删除药方管理
     * 
     * @param prescriptionIds 需要删除的药方管理主键
     * @return 结果
     */
    @Override
    public int deleteHospitalPrescriptionManagementByPrescriptionIds(Long[] prescriptionIds)
    {
        return hospitalPrescriptionManagementMapper.deleteHospitalPrescriptionManagementByPrescriptionIds(prescriptionIds);
    }

    /**
     * 删除药方管理信息
     * 
     * @param prescriptionId 药方管理主键
     * @return 结果
     */
    @Override
    public int deleteHospitalPrescriptionManagementByPrescriptionId(Long prescriptionId)
    {
        return hospitalPrescriptionManagementMapper.deleteHospitalPrescriptionManagementByPrescriptionId(prescriptionId);
    }
}
