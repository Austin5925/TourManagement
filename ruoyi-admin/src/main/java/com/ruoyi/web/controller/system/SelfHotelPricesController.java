package com.ruoyi.web.controller.system;

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
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.SelfHotelPrices;
import com.ruoyi.system.service.ISelfHotelPricesService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 酒店价格Controller
 * 
 * @author ruoyi
 * @date 2023-06-26
 */
@RestController
@RequestMapping("/system/hotel_prices")
public class SelfHotelPricesController extends BaseController
{
    @Autowired
    private ISelfHotelPricesService selfHotelPricesService;

    /**
     * 查询酒店价格列表
     */
    @PreAuthorize("@ss.hasPermi('system:hotel_prices:list')")
    @GetMapping("/list")
    public TableDataInfo list(SelfHotelPrices selfHotelPrices)
    {
        startPage();
        List<SelfHotelPrices> list = selfHotelPricesService.selectSelfHotelPricesList(selfHotelPrices);
        return getDataTable(list);
    }

    /**
     * 导出酒店价格列表
     */
    @PreAuthorize("@ss.hasPermi('system:hotel_prices:export')")
    @Log(title = "酒店价格", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SelfHotelPrices selfHotelPrices)
    {
        List<SelfHotelPrices> list = selfHotelPricesService.selectSelfHotelPricesList(selfHotelPrices);
        ExcelUtil<SelfHotelPrices> util = new ExcelUtil<SelfHotelPrices>(SelfHotelPrices.class);
        util.exportExcel(response, list, "酒店价格数据");
    }

    /**
     * 获取酒店价格详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:hotel_prices:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(selfHotelPricesService.selectSelfHotelPricesById(id));
    }

    /**
     * 新增酒店价格
     */
    @PreAuthorize("@ss.hasPermi('system:hotel_prices:add')")
    @Log(title = "酒店价格", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SelfHotelPrices selfHotelPrices)
    {
        return toAjax(selfHotelPricesService.insertSelfHotelPrices(selfHotelPrices));
    }

    /**
     * 修改酒店价格
     */
    @PreAuthorize("@ss.hasPermi('system:hotel_prices:edit')")
    @Log(title = "酒店价格", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SelfHotelPrices selfHotelPrices)
    {
        return toAjax(selfHotelPricesService.updateSelfHotelPrices(selfHotelPrices));
    }

    /**
     * 删除酒店价格
     */
    @PreAuthorize("@ss.hasPermi('system:hotel_prices:remove')")
    @Log(title = "酒店价格", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(selfHotelPricesService.deleteSelfHotelPricesByIds(ids));
    }
}