package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 游客对象 self_visitors
 *
 * @author ruoyi
 * @date 2023-06-26
 */
public class SelfVisitors extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 身份证号 */
    @Excel(name = "身份证号")
    private String cnId;

    /** 游客姓名 */
    @Excel(name = "游客姓名")
    private String visitorsName;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phoneNumber;

    /** 订单号 */
    @Excel(name = "订单号")
    private Long orderId;

    /** 门票号 */
    @Excel(name = "门票号")
    private Long ticketId;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setCnId(String cnId)
    {
        this.cnId = cnId;
    }

    public String getCnId()
    {
        return cnId;
    }

    public Long convertCnIdToLong() {
        return Long.parseLong(cnId);
    }

    public void setVisitorsName(String visitorsName)
    {
        this.visitorsName = visitorsName;
    }

    public String getVisitorsName()
    {
        return visitorsName;
    }
    public void setPhoneNumber(String phoneNumber)
    {
        this.phoneNumber = phoneNumber;
    }

    public String getPhoneNumber()
    {
        return phoneNumber;
    }
    public void setOrderId(Long orderId)
    {
        this.orderId = orderId;
    }

    public Long getOrderId()
    {
        return orderId;
    }
    public void setTicketId(Long ticketId)
    {
        this.ticketId = ticketId;
    }

    public Long getTicketId()
    {
        return ticketId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("cnId", getCnId())
            .append("visitorsName", getVisitorsName())
            .append("phoneNumber", getPhoneNumber())
            .append("orderId", getOrderId())
            .append("ticketId", getTicketId())
            .toString();
    }
}
