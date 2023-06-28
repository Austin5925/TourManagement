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
import com.ruoyi.system.domain.SelfVisitors;
import com.ruoyi.system.service.ISelfVisitorsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 游客Controller
 *
 * @author ruoyi
 * @date 2023-06-26
 */
@RestController
@RequestMapping("/system/visitors")
public class SelfVisitorsController extends BaseController
{
    @Autowired
    private ISelfVisitorsService selfVisitorsService;

    /**
     * 查询游客列表
     */
    @PreAuthorize("@ss.hasPermi('system:visitors:list')")
    @GetMapping("/list")
    public TableDataInfo list(SelfVisitors selfVisitors)
    {
        startPage();
        List<SelfVisitors> list = selfVisitorsService.selectSelfVisitorsList(selfVisitors);
        return getDataTable(list);
    }

    /**
     * 导出游客列表
     */
    @PreAuthorize("@ss.hasPermi('system:visitors:export')")
    @Log(title = "游客", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SelfVisitors selfVisitors)
    {
        List<SelfVisitors> list = selfVisitorsService.selectSelfVisitorsList(selfVisitors);
        ExcelUtil<SelfVisitors> util = new ExcelUtil<SelfVisitors>(SelfVisitors.class);
        util.exportExcel(response, list, "游客数据");
    }

    /**
     * 获取游客详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:visitors:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(selfVisitorsService.selectSelfVisitorsById(id));
    }

    /**
     * 新增游客
     */
    @PreAuthorize("@ss.hasPermi('system:visitors:add')")
    @Log(title = "游客", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SelfVisitors selfVisitors)
    {
        return toAjax(selfVisitorsService.insertSelfVisitors(selfVisitors));
    }

    /**
     * 修改游客
     */
    @PreAuthorize("@ss.hasPermi('system:visitors:edit')")
    @Log(title = "游客", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SelfVisitors selfVisitors)
    {
        return toAjax(selfVisitorsService.updateSelfVisitors(selfVisitors));
    }

    /**
     * 删除游客
     */
    @PreAuthorize("@ss.hasPermi('system:visitors:remove')")
    @Log(title = "游客", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(selfVisitorsService.deleteSelfVisitorsByIds(ids));
    }

//
//
//    /**
//     * 游客预约
//     */
//    @PreAuthorize("@ss.hasPermi('system:visitors:appoint')")
//    @Log(title = "游客", businessType = BusinessType.INSERT)
//    @PostMapping("/appoint")
//    public AjaxResult appoint(@RequestBody SelfVisitors selfVisitors)
//    {
//
//        return toAjax(selfVisitorsService.insertSelfVisitors(selfVisitors));
//    }
}
