package com.hospital.service;

import java.util.List;
import com.hospital.domain.HospitalNursingRecord;

/**
 * 护理日志Service接口
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
public interface IHospitalNursingRecordService 
{
    /**
     * 查询护理日志
     * 
     * @param recordId 护理日志主键
     * @return 护理日志
     */
    public HospitalNursingRecord selectHospitalNursingRecordByRecordId(Long recordId);

    /**
     * 查询护理日志列表
     * 
     * @param hospitalNursingRecord 护理日志
     * @return 护理日志集合
     */
    public List<HospitalNursingRecord> selectHospitalNursingRecordList(HospitalNursingRecord hospitalNursingRecord);

    /**
     * 新增护理日志
     * 
     * @param hospitalNursingRecord 护理日志
     * @return 结果
     */
    public int insertHospitalNursingRecord(HospitalNursingRecord hospitalNursingRecord);

    /**
     * 修改护理日志
     * 
     * @param hospitalNursingRecord 护理日志
     * @return 结果
     */
    public int updateHospitalNursingRecord(HospitalNursingRecord hospitalNursingRecord);

    /**
     * 批量删除护理日志
     * 
     * @param recordIds 需要删除的护理日志主键集合
     * @return 结果
     */
    public int deleteHospitalNursingRecordByRecordIds(Long[] recordIds);

    /**
     * 删除护理日志信息
     * 
     * @param recordId 护理日志主键
     * @return 结果
     */
    public int deleteHospitalNursingRecordByRecordId(Long recordId);
}
