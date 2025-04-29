package com.hospital.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hospital.mapper.HospitalNursingRecordMapper;
import com.hospital.domain.HospitalNursingRecord;
import com.hospital.service.IHospitalNursingRecordService;

/**
 * 护理日志Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
@Service
public class HospitalNursingRecordServiceImpl implements IHospitalNursingRecordService 
{
    @Autowired
    private HospitalNursingRecordMapper hospitalNursingRecordMapper;

    /**
     * 查询护理日志
     * 
     * @param recordId 护理日志主键
     * @return 护理日志
     */
    @Override
    public HospitalNursingRecord selectHospitalNursingRecordByRecordId(Long recordId)
    {
        return hospitalNursingRecordMapper.selectHospitalNursingRecordByRecordId(recordId);
    }

    /**
     * 查询护理日志列表
     * 
     * @param hospitalNursingRecord 护理日志
     * @return 护理日志
     */
    @Override
    public List<HospitalNursingRecord> selectHospitalNursingRecordList(HospitalNursingRecord hospitalNursingRecord)
    {
        return hospitalNursingRecordMapper.selectHospitalNursingRecordList(hospitalNursingRecord);
    }

    /**
     * 新增护理日志
     * 
     * @param hospitalNursingRecord 护理日志
     * @return 结果
     */
    @Override
    public int insertHospitalNursingRecord(HospitalNursingRecord hospitalNursingRecord)
    {
        return hospitalNursingRecordMapper.insertHospitalNursingRecord(hospitalNursingRecord);
    }

    /**
     * 修改护理日志
     * 
     * @param hospitalNursingRecord 护理日志
     * @return 结果
     */
    @Override
    public int updateHospitalNursingRecord(HospitalNursingRecord hospitalNursingRecord)
    {
        return hospitalNursingRecordMapper.updateHospitalNursingRecord(hospitalNursingRecord);
    }

    /**
     * 批量删除护理日志
     * 
     * @param recordIds 需要删除的护理日志主键
     * @return 结果
     */
    @Override
    public int deleteHospitalNursingRecordByRecordIds(Long[] recordIds)
    {
        return hospitalNursingRecordMapper.deleteHospitalNursingRecordByRecordIds(recordIds);
    }

    /**
     * 删除护理日志信息
     * 
     * @param recordId 护理日志主键
     * @return 结果
     */
    @Override
    public int deleteHospitalNursingRecordByRecordId(Long recordId)
    {
        return hospitalNursingRecordMapper.deleteHospitalNursingRecordByRecordId(recordId);
    }
}
