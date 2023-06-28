package com.ruoyi.web.controller.system;

import java.util.Date;
import java.util.List;
import java.util.Objects;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.system.domain.SelfParkingCars;
import com.ruoyi.system.domain.SelfVisitors;
import com.ruoyi.system.service.ISelfVisitorsService;
import org.apache.commons.lang3.builder.ToStringExclude;
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
import com.ruoyi.system.domain.SelfTicketServices;
import com.ruoyi.system.service.ISelfTicketServicesService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 票务Controller
 *
 * @author ruoyi
 * @date 2023-06-26
 */
@RestController
@RequestMapping("/system/ticket_services")
public class SelfTicketServicesController extends BaseController
{
    @Autowired
    private ISelfTicketServicesService selfTicketServicesService;

    @Autowired
    private ISelfVisitorsService selfVisitorsService;

    /**
     * 查询票务列表
     */
    @PreAuthorize("@ss.hasPermi('system:ticket_services:list')")
    @GetMapping("/list")
    public TableDataInfo list(SelfTicketServices selfTicketServices)
    {
        startPage();
        List<SelfTicketServices> list = selfTicketServicesService.selectSelfTicketServicesList(selfTicketServices);
        return getDataTable(list);
    }

    /**
     * 导出票务列表
     */
    @PreAuthorize("@ss.hasPermi('system:ticket_services:export')")
    @Log(title = "票务", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SelfTicketServices selfTicketServices)
    {
        List<SelfTicketServices> list = selfTicketServicesService.selectSelfTicketServicesList(selfTicketServices);
        ExcelUtil<SelfTicketServices> util = new ExcelUtil<SelfTicketServices>(SelfTicketServices.class);
        util.exportExcel(response, list, "票务数据");
    }

    /**
     * 获取票务详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:ticket_services:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(selfTicketServicesService.selectSelfTicketServicesById(id));
    }

    /**
     * 新增票务
     */
    @PreAuthorize("@ss.hasPermi('system:ticket_services:add')")
    @Log(title = "票务", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SelfTicketServices selfTicketServices)
    {
        SelfTicketServices selfTicketServices11 = selfTicketServices;
//        System.out.println(selfTicketServices11);
        return toAjax(selfTicketServicesService.insertSelfTicketServices(selfTicketServices11));
    }

    /**
     * 修改票务
     */
    @PreAuthorize("@ss.hasPermi('system:ticket_services:edit')")
    @Log(title = "票务", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SelfTicketServices selfTicketServices)
    {
        return toAjax(selfTicketServicesService.updateSelfTicketServices(selfTicketServices));
    }

    /**
     * 删除票务
     */
    @PreAuthorize("@ss.hasPermi('system:ticket_services:remove')")
    @Log(title = "票务", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(selfTicketServicesService.deleteSelfTicketServicesByIds(ids));
    }


    //结合时间和游客的cnID，写一个函数，使用哈希求出一个9位的票号
    public String getTicketIdHash(String cnId){
        String time = String.valueOf(System.currentTimeMillis());
        String hash = String.valueOf((cnId + time).hashCode()).substring(1,9);
        return hash;
    }

    /**
     * 游客预约
     */
    @PreAuthorize("@ss.hasPermi('system:ticket_services:appoint')")
    @Log(title = "票务", businessType = BusinessType.INSERT)
    @PostMapping("/appoint")
    public AjaxResult appoint(@RequestBody SelfTicketServices selfTicketServices)
    {
        SelfTicketServices selfTicketServices11 = selfTicketServices;
        System.out.println(selfTicketServices11);
        selfTicketServices11.setTicketId(Long.valueOf(getTicketIdHash(selfTicketServices11.getCnId())));
        SelfVisitors selfVisitors = new SelfVisitors();
        selfVisitors.setVisitorsName(selfTicketServices11.getVisitorsName());
        selfVisitors.setPhoneNumber(selfTicketServices11.getPhoneNumber());
        selfVisitors.setCnId(selfTicketServices11.getCnId());
        selfVisitors.setTicketId(selfTicketServices11.getTicketId());

        selfVisitorsService.insertSelfVisitors(selfVisitors);//插入游客信息数据库中

        return toAjax(selfTicketServicesService.insertSelfTicketServices(selfTicketServices));
    }

    /**
     * 游客查询信息
     */
    @PreAuthorize("@ss.hasPermi('system:ticket_services:checkInfo')")
    @GetMapping(value = "/checkInfo/{cnId}")
    public TableDataInfo checkInfo(@PathVariable("cnId") String cnId)
    {
//        Long cnIdLong = Long.valueOf(cnId);
        List<SelfTicketServices> list = selfTicketServicesService.selectSelfTicketServicesByCnId(cnId);
        System.out.println(list);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('system:ticket_services:inPark')")
    @GetMapping(value = "/inPark/{cnId}")
    public AjaxResult inPark(@PathVariable("cnId") String cnId)
    {
        List<SelfTicketServices> list = selfTicketServicesService.selectSelfTicketServicesByCnId(cnId);
        for (SelfTicketServices sts : list) {
            if (cnId.equals(sts.getCnId()) && sts.getStateVisit()!=null && !Objects.equals(sts.getStateVisit(), "1")) {
                //todo 0,1,2
                return AjaxResult.error("请勿重复登记入园！");
            }
        }
        SelfTicketServices selfTicketServices = new SelfTicketServices();
        selfTicketServices.setCnId(cnId);
//        Date date = new Date();
//        selfTicketServices.setVisitorInTime(date);
        selfTicketServices.setStateVisit("1");
        return toAjax(selfTicketServicesService.updateVisitorInTime(cnId));
    }

    @PreAuthorize("@ss.hasPermi('system:ticket_services:outPark')")
    @GetMapping(value = "/outPark/{cnId}")
    public AjaxResult outPark(@PathVariable("cnId") String cnId)
    {
        List<SelfTicketServices> list = selfTicketServicesService.selectSelfTicketServicesByCnId(cnId);
        for (SelfTicketServices sts : list) {
            System.out.println(cnId.equals(sts.getCnId()));
            System.out.println(sts.getStateVisit()==null);
            System.out.println(!Objects.equals(sts.getStateVisit(), "1"));
            if (cnId.equals(sts.getCnId()) && (!Objects.equals(sts.getStateVisit(), "1") || sts.getStateVisit()==null)) {
                return AjaxResult.error("该游客未入园！");
            }
        }
        return toAjax(selfTicketServicesService.updateVisitorOutTime(cnId));
    }
}
