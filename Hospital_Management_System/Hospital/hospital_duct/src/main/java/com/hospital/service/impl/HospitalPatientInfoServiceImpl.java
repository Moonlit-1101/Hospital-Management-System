package com.hospital.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hospital.mapper.HospitalPatientInfoMapper;
import com.hospital.domain.HospitalPatientInfo;
import com.hospital.service.IHospitalPatientInfoService;

/**
 * 就诊信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
@Service
public class HospitalPatientInfoServiceImpl implements IHospitalPatientInfoService 
{
    @Autowired
    private HospitalPatientInfoMapper hospitalPatientInfoMapper;

    /**
     * 查询就诊信息
     * 
     * @param patientId 就诊信息主键
     * @return 就诊信息
     */
    @Override
    public HospitalPatientInfo selectHospitalPatientInfoByPatientId(Long patientId)
    {
        return hospitalPatientInfoMapper.selectHospitalPatientInfoByPatientId(patientId);
    }

    /**
     * 查询就诊信息列表
     * 
     * @param hospitalPatientInfo 就诊信息
     * @return 就诊信息
     */
    @Override
    public List<HospitalPatientInfo> selectHospitalPatientInfoList(HospitalPatientInfo hospitalPatientInfo)
    {
        return hospitalPatientInfoMapper.selectHospitalPatientInfoList(hospitalPatientInfo);
    }

    /**
     * 新增就诊信息
     * 
     * @param hospitalPatientInfo 就诊信息
     * @return 结果
     */
    @Override
    public int insertHospitalPatientInfo(HospitalPatientInfo hospitalPatientInfo)
    {
        return hospitalPatientInfoMapper.insertHospitalPatientInfo(hospitalPatientInfo);
    }

    /**
     * 修改就诊信息
     * 
     * @param hospitalPatientInfo 就诊信息
     * @return 结果
     */
    @Override
    public int updateHospitalPatientInfo(HospitalPatientInfo hospitalPatientInfo)
    {
        return hospitalPatientInfoMapper.updateHospitalPatientInfo(hospitalPatientInfo);
    }

    /**
     * 批量删除就诊信息
     * 
     * @param patientIds 需要删除的就诊信息主键
     * @return 结果
     */
    @Override
    public int deleteHospitalPatientInfoByPatientIds(Long[] patientIds)
    {
        return hospitalPatientInfoMapper.deleteHospitalPatientInfoByPatientIds(patientIds);
    }

    /**
     * 删除就诊信息信息
     * 
     * @param patientId 就诊信息主键
     * @return 结果
     */
    @Override
    public int deleteHospitalPatientInfoByPatientId(Long patientId)
    {
        return hospitalPatientInfoMapper.deleteHospitalPatientInfoByPatientId(patientId);
    }
}
