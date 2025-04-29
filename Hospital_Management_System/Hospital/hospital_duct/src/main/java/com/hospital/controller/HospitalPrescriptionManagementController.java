package com.hospital.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.hospital.domain.HospitalPrescriptionManagement;
import com.hospital.service.IHospitalPrescriptionManagementService;
import com.hospital.common.utils.poi.ExcelUtil;
import com.hospital.common.core.page.TableDataInfo;

/**
 * 药方管理Controller
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
@RestController
@RequestMapping("/hospital/hospitalManagement")
public class HospitalPrescriptionManagementController extends BaseController
{
    @Autowired
    private IHospitalPrescriptionManagementService hospitalPrescriptionManagementService;

    /**
     * 查询药方管理列表
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalManagement:list')")
    @GetMapping("/list")
    public TableDataInfo list(HospitalPrescriptionManagement hospitalPrescriptionManagement)
    {
        startPage();
        List<HospitalPrescriptionManagement> list = hospitalPrescriptionManagementService.selectHospitalPrescriptionManagementList(hospitalPrescriptionManagement);
        return getDataTable(list);
    }

    /**
     * 导出药方管理列表
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalManagement:export')")
    @Log(title = "药方管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, HospitalPrescriptionManagement hospitalPrescriptionManagement)
    {
        List<HospitalPrescriptionManagement> list = hospitalPrescriptionManagementService.selectHospitalPrescriptionManagementList(hospitalPrescriptionManagement);
        ExcelUtil<HospitalPrescriptionManagement> util = new ExcelUtil<HospitalPrescriptionManagement>(HospitalPrescriptionManagement.class);
        util.exportExcel(response, list, "药方管理数据");
    }

    /**
     * 获取药方管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalManagement:query')")
    @GetMapping(value = "/{prescriptionId}")
    public AjaxResult getInfo(@PathVariable("prescriptionId") Long prescriptionId)
    {
        return success(hospitalPrescriptionManagementService.selectHospitalPrescriptionManagementByPrescriptionId(prescriptionId));
    }

    /**
     * 新增药方管理
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalManagement:add')")
    @Log(title = "药方管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HospitalPrescriptionManagement hospitalPrescriptionManagement)
    {
        return toAjax(hospitalPrescriptionManagementService.insertHospitalPrescriptionManagement(hospitalPrescriptionManagement));
    }

    /**
     * 修改药方管理
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalManagement:edit')")
    @Log(title = "药方管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HospitalPrescriptionManagement hospitalPrescriptionManagement)
    {
        return toAjax(hospitalPrescriptionManagementService.updateHospitalPrescriptionManagement(hospitalPrescriptionManagement));
    }

    /**
     * 删除药方管理
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalManagement:remove')")
    @Log(title = "药方管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{prescriptionIds}")
    public AjaxResult remove(@PathVariable Long[] prescriptionIds)
    {
        return toAjax(hospitalPrescriptionManagementService.deleteHospitalPrescriptionManagementByPrescriptionIds(prescriptionIds));
    }
}
