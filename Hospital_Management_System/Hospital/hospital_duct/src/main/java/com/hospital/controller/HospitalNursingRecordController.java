package com.hospital.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.hospital.common.core.domain.entity.SysUser;
import com.hospital.common.core.domain.model.LoginUser;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.hospital.common.annotation.Log;
import com.hospital.common.core.controller.BaseController;
import com.hospital.common.core.domain.AjaxResult;
import com.hospital.common.enums.BusinessType;
import com.hospital.domain.HospitalNursingRecord;
import com.hospital.service.IHospitalNursingRecordService;
import com.hospital.common.utils.poi.ExcelUtil;
import com.hospital.common.core.page.TableDataInfo;

/**
 * 护理日志Controller
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
@RestController
@RequestMapping("/hospital/hospitalRecord")
public class HospitalNursingRecordController extends BaseController
{
    @Autowired
    private IHospitalNursingRecordService hospitalNursingRecordService;

    /**
     * 查询护理日志列表
     */
    @GetMapping("/list")
    public TableDataInfo list(HospitalNursingRecord hospitalNursingRecord)
    {
        startPage();
        List<HospitalNursingRecord> list = hospitalNursingRecordService.selectHospitalNursingRecordList(hospitalNursingRecord);
        return getDataTable(list);
    }

    /**
     * 导出护理日志列表
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalRecord:export')")
    @Log(title = "护理日志", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, HospitalNursingRecord hospitalNursingRecord)
    {
        List<HospitalNursingRecord> list = hospitalNursingRecordService.selectHospitalNursingRecordList(hospitalNursingRecord);
        ExcelUtil<HospitalNursingRecord> util = new ExcelUtil<HospitalNursingRecord>(HospitalNursingRecord.class);
        util.exportExcel(response, list, "护理日志数据");
    }

    /**
     * 获取护理日志详细信息
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalRecord:query')")
    @GetMapping(value = "/{recordId}")
    public AjaxResult getInfo(@PathVariable("recordId") Long recordId)
    {
        return success(hospitalNursingRecordService.selectHospitalNursingRecordByRecordId(recordId));
    }

    /**
     * 新增护理日志
     */
    @Log(title = "护理日志", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HospitalNursingRecord hospitalNursingRecord)
    {
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        hospitalNursingRecord.setNurseName(user.getNickName());
        return toAjax(hospitalNursingRecordService.insertHospitalNursingRecord(hospitalNursingRecord));
    }

    /**
     * 修改护理日志
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalRecord:edit')")
    @Log(title = "护理日志", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HospitalNursingRecord hospitalNursingRecord)
    {
        return toAjax(hospitalNursingRecordService.updateHospitalNursingRecord(hospitalNursingRecord));
    }

    /**
     * 删除护理日志
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalRecord:remove')")
    @Log(title = "护理日志", businessType = BusinessType.DELETE)
	@DeleteMapping("/{recordIds}")
    public AjaxResult remove(@PathVariable Long[] recordIds)
    {
        return toAjax(hospitalNursingRecordService.deleteHospitalNursingRecordByRecordIds(recordIds));
    }
}
