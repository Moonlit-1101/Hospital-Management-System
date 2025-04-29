package com.hospital.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import com.hospital.domain.HospitalPatientInfo;
import com.hospital.service.IHospitalPatientInfoService;
import com.hospital.common.utils.poi.ExcelUtil;
import com.hospital.common.core.page.TableDataInfo;

/**
 * 就诊信息Controller
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
@RestController
@RequestMapping("/hospital/hospitalInfo")
public class HospitalPatientInfoController extends BaseController
{
    @Autowired
    private IHospitalPatientInfoService hospitalPatientInfoService;


    /**
     * 查询未诊断的信息列表
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInfo:list')")
    @GetMapping("/getNumber")
    public List<Map<String, Object>> getNumber(HospitalPatientInfo hospitalPatientInfo)
    {

        List<HospitalPatientInfo> list = hospitalPatientInfoService.selectHospitalPatientInfoList(hospitalPatientInfo);

        int a = 0, b = 0, c = 0;
        for (HospitalPatientInfo patientInfo : list) {
            String patientState = patientInfo.getPatientState();
            if ("0".equals(patientState)) {
                a++;
            } else if ("1".equals(patientState)) {
                b++;
            } else if ("2".equals(patientState)) {
                c++;
            }
        }
        List<Map<String, Object>> data = new ArrayList<>();
        Map<String, Object> item1 = new HashMap<>();
        item1.put("value", a);
        item1.put("name", "待就诊");
        data.add(item1);

        Map<String, Object> item2 = new HashMap<>();
        item2.put("value", b);
        item2.put("name", "住院治疗中");
        data.add(item2);

        Map<String, Object> item3 = new HashMap<>();
        item3.put("value", c);
        item3.put("name", "已康复完成");
        data.add(item3);
        return data;
    }


    /**
     * 查询未诊断的信息列表
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(HospitalPatientInfo hospitalPatientInfo)
    {
        startPage();
        List<HospitalPatientInfo> list = hospitalPatientInfoService.selectHospitalPatientInfoList(hospitalPatientInfo);
        return getDataTable(list);
    }

    /**
     * 查询住院的信息列表
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInfo:list')")
    @GetMapping("/beList")
    public TableDataInfo beList(HospitalPatientInfo hospitalPatientInfo)
    {
        hospitalPatientInfo.setPatientState("1");
        startPage();
        List<HospitalPatientInfo> list = hospitalPatientInfoService.selectHospitalPatientInfoList(hospitalPatientInfo);
        return getDataTable(list);
    }
    /**
     * 查询待诊断的信息列表
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInfo:list')")
    @GetMapping("/diagnosisList")
    public TableDataInfo diagnosisList(HospitalPatientInfo hospitalPatientInfo)
    {
        hospitalPatientInfo.setPatientState("0");
        startPage();
        List<HospitalPatientInfo> list = hospitalPatientInfoService.selectHospitalPatientInfoList(hospitalPatientInfo);
        return getDataTable(list);
    }

    /**
     * 导出就诊信息列表
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInfo:export')")
    @Log(title = "就诊信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, HospitalPatientInfo hospitalPatientInfo)
    {
        List<HospitalPatientInfo> list = hospitalPatientInfoService.selectHospitalPatientInfoList(hospitalPatientInfo);
        ExcelUtil<HospitalPatientInfo> util = new ExcelUtil<HospitalPatientInfo>(HospitalPatientInfo.class);
        util.exportExcel(response, list, "就诊信息数据");
    }

    /**
     * 获取就诊信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInfo:query')")
    @GetMapping(value = "/{patientId}")
    public AjaxResult getInfo(@PathVariable("patientId") Long patientId)
    {
        return success(hospitalPatientInfoService.selectHospitalPatientInfoByPatientId(patientId));
    }

    /**
     * 新增就诊信息
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInfo:add')")
    @Log(title = "就诊信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HospitalPatientInfo hospitalPatientInfo)
    {
        return toAjax(hospitalPatientInfoService.insertHospitalPatientInfo(hospitalPatientInfo));
    }

    /**
     * 修改就诊信息
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInfo:edit')")
    @Log(title = "就诊信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HospitalPatientInfo hospitalPatientInfo)
    {
        if (hospitalPatientInfo.getPatientState().equals("2")){

        }else {
            String isAdmission = hospitalPatientInfo.getIsAdmission();
            if (isAdmission.equals("是")) {
                hospitalPatientInfo.setPatientState("1");
            } else if (isAdmission.equals("否")) {
                hospitalPatientInfo.setPatientState("2");
            }
        }
        return toAjax(hospitalPatientInfoService.updateHospitalPatientInfo(hospitalPatientInfo));
    }

    /**
     * 删除就诊信息
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInfo:remove')")
    @Log(title = "就诊信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{patientIds}")
    public AjaxResult remove(@PathVariable Long[] patientIds)
    {
        return toAjax(hospitalPatientInfoService.deleteHospitalPatientInfoByPatientIds(patientIds));
    }
}
