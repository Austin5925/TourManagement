package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.SelfVisitors;

/**
 * 游客Mapper接口
 * 
 * @author ruoyi
 * @date 2023-06-26
 */
public interface SelfVisitorsMapper 
{
    /**
     * 查询游客
     * 
     * @param id 游客主键
     * @return 游客
     */
    public SelfVisitors selectSelfVisitorsById(Long id);

    /**
     * 查询游客列表
     * 
     * @param selfVisitors 游客
     * @return 游客集合
     */
    public List<SelfVisitors> selectSelfVisitorsList(SelfVisitors selfVisitors);

    /**
     * 新增游客
     * 
     * @param selfVisitors 游客
     * @return 结果
     */
    public int insertSelfVisitors(SelfVisitors selfVisitors);

    /**
     * 修改游客
     * 
     * @param selfVisitors 游客
     * @return 结果
     */
    public int updateSelfVisitors(SelfVisitors selfVisitors);

    /**
     * 删除游客
     * 
     * @param id 游客主键
     * @return 结果
     */
    public int deleteSelfVisitorsById(Long id);

    /**
     * 批量删除游客
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSelfVisitorsByIds(Long[] ids);
}
