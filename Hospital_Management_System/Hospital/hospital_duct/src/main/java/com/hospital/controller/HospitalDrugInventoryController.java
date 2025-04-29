package com.hospital.controller;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
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
import com.hospital.domain.HospitalDrugInventory;
import com.hospital.service.IHospitalDrugInventoryService;
import com.hospital.common.utils.poi.ExcelUtil;
import com.hospital.common.core.page.TableDataInfo;

/**
 * 库存药品Controller
 * 
 * @author ruoyi
 * @date 2025-04-09
 */
@RestController
@RequestMapping("/hospital/hospitalInventory")
public class HospitalDrugInventoryController extends BaseController
{
    @Autowired
    private IHospitalDrugInventoryService hospitalDrugInventoryService;

    /**
     * 查询库存药品列表
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInventory:list')")
    @GetMapping("/list")
    public TableDataInfo list(HospitalDrugInventory hospitalDrugInventory)
    {
        startPage();
        List<HospitalDrugInventory> list = hospitalDrugInventoryService.selectHospitalDrugInventoryList(hospitalDrugInventory);
        return getDataTable(list);
    }

    /**
     * 导出库存药品列表
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInventory:export')")
    @Log(title = "库存药品", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, HospitalDrugInventory hospitalDrugInventory)
    {
        List<HospitalDrugInventory> list = hospitalDrugInventoryService.selectHospitalDrugInventoryList(hospitalDrugInventory);
        ExcelUtil<HospitalDrugInventory> util = new ExcelUtil<HospitalDrugInventory>(HospitalDrugInventory.class);
        util.exportExcel(response, list, "库存药品数据");
    }

    /**
     * 获取库存药品详细信息
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInventory:query')")
    @GetMapping(value = "/{drugId}")
    public AjaxResult getInfo(@PathVariable("drugId") Long drugId)
    {
        return success(hospitalDrugInventoryService.selectHospitalDrugInventoryByDrugId(drugId));
    }

    /**
     * 新增库存药品
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInventory:add')")
    @Log(title = "库存药品", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HospitalDrugInventory hospitalDrugInventory)
    {
        return toAjax(hospitalDrugInventoryService.insertHospitalDrugInventory(hospitalDrugInventory));
    }

    /**
     * 修改库存药品
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInventory:edit')")
    @Log(title = "库存药品", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HospitalDrugInventory hospitalDrugInventory)
    {
        return toAjax(hospitalDrugInventoryService.updateHospitalDrugInventory(hospitalDrugInventory));
    }
    /**
     * 修改库存药品
     */
    @Log(title = "库存药品", businessType = BusinessType.UPDATE)
    @PutMapping("/qu")
    public AjaxResult quEdit(@RequestBody HospitalDrugInventory hospitalDrugInventory)
    {


        Date expirationDate = hospitalDrugInventory.getExpirationDate();
        if (isExpirationDatePassed(expirationDate)) {
            return error("药品超出了日期!");
        }
        Long drugId = hospitalDrugInventory.getDrugId();
        HospitalDrugInventory hospitalDrugInventory1 = hospitalDrugInventoryService.selectHospitalDrugInventoryByDrugId(drugId);
        //库存数量
        Long stockQuantity = hospitalDrugInventory1.getStockQuantity();
        //要取出数量
        Long stockQuantity1 = hospitalDrugInventory.getStockQuantity();
        if (stockQuantity < stockQuantity1){
            return error("库存数量不足!");
        }
        long l = stockQuantity - stockQuantity1;
        hospitalDrugInventory.setStockQuantity(l);
        hospitalDrugInventoryService.updateHospitalDrugInventory(hospitalDrugInventory);
        BigDecimal unitPrice = hospitalDrugInventory.getUnitPrice();
        BigDecimal result = multiply(unitPrice, stockQuantity1);
        return success("成功取出"+hospitalDrugInventory.getDrugName()+" 价格为："+result);
    }
    public static BigDecimal multiply(BigDecimal unitPrice, Long stockQuantity1) {
        // 将 Long 类型的 stockQuantity1 转换为 BigDecimal 类型
        BigDecimal quantity = BigDecimal.valueOf(stockQuantity1);
        // 执行乘法运算
        return unitPrice.multiply(quantity);
    }
    public static boolean isExpirationDatePassed(Date expirationDate) {
        LocalDate expiration = expirationDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        LocalDate today = LocalDate.now();

        if (expiration.isBefore(today)) {
            return true;
        }
        return false;
    }
    /**
     * 删除库存药品
     */
    @PreAuthorize("@ss.hasPermi('hospital:hospitalInventory:remove')")
    @Log(title = "库存药品", businessType = BusinessType.DELETE)
	@DeleteMapping("/{drugIds}")
    public AjaxResult remove(@PathVariable Long[] drugIds)
    {
        return toAjax(hospitalDrugInventoryService.deleteHospitalDrugInventoryByDrugIds(drugIds));
    }
}
