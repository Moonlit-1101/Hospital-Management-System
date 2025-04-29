package com.hospital.service;

import java.util.List;
import com.hospital.domain.HospitalPatientInfo;

/**
 * 就诊信息Service接口
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
public interface IHospitalPatientInfoService 
{
    /**
     * 查询就诊信息
     * 
     * @param patientId 就诊信息主键
     * @return 就诊信息
     */
    public HospitalPatientInfo selectHospitalPatientInfoByPatientId(Long patientId);

    /**
     * 查询就诊信息列表
     * 
     * @param hospitalPatientInfo 就诊信息
     * @return 就诊信息集合
     */
    public List<HospitalPatientInfo> selectHospitalPatientInfoList(HospitalPatientInfo hospitalPatientInfo);

    /**
     * 新增就诊信息
     * 
     * @param hospitalPatientInfo 就诊信息
     * @return 结果
     */
    public int insertHospitalPatientInfo(HospitalPatientInfo hospitalPatientInfo);

    /**
     * 修改就诊信息
     * 
     * @param hospitalPatientInfo 就诊信息
     * @return 结果
     */
    public int updateHospitalPatientInfo(HospitalPatientInfo hospitalPatientInfo);

    /**
     * 批量删除就诊信息
     * 
     * @param patientIds 需要删除的就诊信息主键集合
     * @return 结果
     */
    public int deleteHospitalPatientInfoByPatientIds(Long[] patientIds);

    /**
     * 删除就诊信息信息
     * 
     * @param patientId 就诊信息主键
     * @return 结果
     */
    public int deleteHospitalPatientInfoByPatientId(Long patientId);
}
