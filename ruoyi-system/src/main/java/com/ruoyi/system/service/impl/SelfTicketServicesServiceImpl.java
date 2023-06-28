package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.system.domain.SelfVisitors;
import com.ruoyi.system.mapper.SelfVisitorsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SelfTicketServicesMapper;
import com.ruoyi.system.domain.SelfTicketServices;
import com.ruoyi.system.service.ISelfTicketServicesService;

/**
 * 票务Service业务层处理
 *
 * @author ruoyi
 * @date 2023-06-26
 */
@Service
public class SelfTicketServicesServiceImpl implements ISelfTicketServicesService
{
    @Autowired
    private SelfTicketServicesMapper selfTicketServicesMapper;



    /**
     * 查询票务
     *
     * @param id 票务主键
     * @return 票务
     */
    @Override
    public SelfTicketServices selectSelfTicketServicesById(Long id)
    {
        return selfTicketServicesMapper.selectSelfTicketServicesById(id);
    }


    //游客查询票务
    @Override
    public List<SelfTicketServices> selectSelfTicketServicesByCnId (String cnId) {
        return selfTicketServicesMapper.selectSelfTicketServicesByCnId(cnId);
    }


    /**
     * 查询票务列表
     *
     * @param selfTicketServices 票务
     * @return 票务
     */
    @Override
    public List<SelfTicketServices> selectSelfTicketServicesList(SelfTicketServices selfTicketServices)
    {
        return selfTicketServicesMapper.selectSelfTicketServicesList(selfTicketServices);
    }

    /**
     * 新增票务
     *
     * @param selfTicketServices 票务
     * @return 结果
     */
    @Override
    public int insertSelfTicketServices(SelfTicketServices selfTicketServices)
    {
        return selfTicketServicesMapper.insertSelfTicketServices(selfTicketServices);
    }

    /**
     * 修改票务
     *
     * @param selfTicketServices 票务
     * @return 结果
     */
    @Override
    public int updateSelfTicketServices(SelfTicketServices selfTicketServices)
    {
        return selfTicketServicesMapper.updateSelfTicketServices(selfTicketServices);
    }


    @Override
    public int updateVisitorInTime(String cnId) {
        return selfTicketServicesMapper.updateVisitorInTime(cnId);
    }

    @Override
    public int updateVisitorOutTime(String cnId) {
        return selfTicketServicesMapper.updateVisitorOutTime(cnId);
    }

    /**
     * 批量删除票务
     *
     * @param ids 需要删除的票务主键
     * @return 结果
     */
    @Override
    public int deleteSelfTicketServicesByIds(Long[] ids)
    {
        return selfTicketServicesMapper.deleteSelfTicketServicesByIds(ids);
    }

    /**
     * 删除票务信息
     *
     * @param id 票务主键
     * @return 结果
     */
    @Override
    public int deleteSelfTicketServicesById(Long id)
    {
        return selfTicketServicesMapper.deleteSelfTicketServicesById(id);
    }


}
