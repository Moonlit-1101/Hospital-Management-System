package com.hospital.mapper;

import java.util.List;
import com.hospital.domain.HospitalPrescriptionManagement;

/**
 * 药方管理Mapper接口
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
public interface HospitalPrescriptionManagementMapper 
{
    /**
     * 查询药方管理
     * 
     * @param prescriptionId 药方管理主键
     * @return 药方管理
     */
    public HospitalPrescriptionManagement selectHospitalPrescriptionManagementByPrescriptionId(Long prescriptionId);

    /**
     * 查询药方管理列表
     * 
     * @param hospitalPrescriptionManagement 药方管理
     * @return 药方管理集合
     */
    public List<HospitalPrescriptionManagement> selectHospitalPrescriptionManagementList(HospitalPrescriptionManagement hospitalPrescriptionManagement);

    /**
     * 新增药方管理
     * 
     * @param hospitalPrescriptionManagement 药方管理
     * @return 结果
     */
    public int insertHospitalPrescriptionManagement(HospitalPrescriptionManagement hospitalPrescriptionManagement);

    /**
     * 修改药方管理
     * 
     * @param hospitalPrescriptionManagement 药方管理
     * @return 结果
     */
    public int updateHospitalPrescriptionManagement(HospitalPrescriptionManagement hospitalPrescriptionManagement);

    /**
     * 删除药方管理
     * 
     * @param prescriptionId 药方管理主键
     * @return 结果
     */
    public int deleteHospitalPrescriptionManagementByPrescriptionId(Long prescriptionId);

    /**
     * 批量删除药方管理
     * 
     * @param prescriptionIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHospitalPrescriptionManagementByPrescriptionIds(Long[] prescriptionIds);
}
