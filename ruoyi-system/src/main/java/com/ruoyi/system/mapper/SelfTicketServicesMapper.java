package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.SelfTicketServices;

/**
 * 票务Mapper接口
 *
 * @author ruoyi
 * @date 2023-06-26
 */
public interface SelfTicketServicesMapper
{
    /**
     * 查询票务
     *
     * @param id 票务主键
     * @return 票务
     */
    public SelfTicketServices selectSelfTicketServicesById(Long id);

    /**
     * 查询票务列表
     *
     * @param selfTicketServices 票务
     * @return 票务集合
     */
    public List<SelfTicketServices> selectSelfTicketServicesList(SelfTicketServices selfTicketServices);

    public List<SelfTicketServices> selectSelfTicketServicesByCnId (String cnId);

    public int updateVisitorInTime (String cnId);

    public int updateVisitorOutTime (String cnId);

    /**
     * 新增票务
     *
     * @param selfTicketServices 票务
     * @return 结果
     */
    public int insertSelfTicketServices(SelfTicketServices selfTicketServices);

    /**
     * 修改票务
     *
     * @param selfTicketServices 票务
     * @return 结果
     */
    public int updateSelfTicketServices(SelfTicketServices selfTicketServices);

    /**
     * 删除票务
     *
     * @param id 票务主键
     * @return 结果
     */
    public int deleteSelfTicketServicesById(Long id);

    /**
     * 批量删除票务
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSelfTicketServicesByIds(Long[] ids);
}
