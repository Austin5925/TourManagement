package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.SelfTicketPrices;

/**
 * 票价Service接口
 * 
 * @author ruoyi
 * @date 2023-06-26
 */
public interface ISelfTicketPricesService 
{
    /**
     * 查询票价
     * 
     * @param id 票价主键
     * @return 票价
     */
    public SelfTicketPrices selectSelfTicketPricesById(Long id);

    /**
     * 查询票价列表
     * 
     * @param selfTicketPrices 票价
     * @return 票价集合
     */
    public List<SelfTicketPrices> selectSelfTicketPricesList(SelfTicketPrices selfTicketPrices);

    /**
     * 新增票价
     * 
     * @param selfTicketPrices 票价
     * @return 结果
     */
    public int insertSelfTicketPrices(SelfTicketPrices selfTicketPrices);

    /**
     * 修改票价
     * 
     * @param selfTicketPrices 票价
     * @return 结果
     */
    public int updateSelfTicketPrices(SelfTicketPrices selfTicketPrices);

    /**
     * 批量删除票价
     * 
     * @param ids 需要删除的票价主键集合
     * @return 结果
     */
    public int deleteSelfTicketPricesByIds(Long[] ids);

    /**
     * 删除票价信息
     * 
     * @param id 票价主键
     * @return 结果
     */
    public int deleteSelfTicketPricesById(Long id);
}
