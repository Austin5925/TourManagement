package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 票务对象 self_ticket_services
 *
 * @author ruoyi
 * @date 2023-06-26
 */
public class SelfTicketServices extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 门票号 */
    @Excel(name = "门票号")
    private Long ticketId;

    /** 身份证号 */
    @Excel(name = "身份证号")
    private String cnId;

    /** 预约日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "预约日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date scheduledDate;

    /** 入园时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "入园时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date visitorInTime;

    /** 出园时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "出园时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date visitorOutTime;

    /** 参观状态 */
    @Excel(name = "参观状态")
    private String stateVisit;

    /** 门票类型 */
    @Excel(name = "门票类型")
    private String typeTicket;


    private String visitorsName;
    private String phoneNumber;

    public String getVisitorsName() {
        return visitorsName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }



    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setTicketId(Long ticketId)
    {
        this.ticketId = ticketId;
    }

    public Long getTicketId()
    {
        return ticketId;
    }
    public void setCnId(String cnId)
    {
        this.cnId = cnId;
    }

    public String getCnId()
    {
        return cnId;
    }
    public void setScheduledDate(Date scheduledDate)
    {
        this.scheduledDate = scheduledDate;
    }

    public Date getScheduledDate()
    {
        return scheduledDate;
    }
    public void setVisitorInTime(Date visitorInTime)
    {
        this.visitorInTime = visitorInTime;
    }

    public Date getVisitorInTime()
    {
        return visitorInTime;
    }
    public void setVisitorOutTime(Date visitorOutTime)
    {
        this.visitorOutTime = visitorOutTime;
    }

    public Date getVisitorOutTime()
    {
        return visitorOutTime;
    }
    public void setStateVisit(String stateVisit)
    {
        this.stateVisit = stateVisit;
    }

    public String getStateVisit()
    {
        return stateVisit;
    }
    public void setTypeTicket(String typeTicket)
    {
        this.typeTicket = typeTicket;
    }

    public String getTypeTicket()
    {
        return typeTicket;
    }



    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("ticketId", getTicketId())
            .append("cnId", getCnId())
            .append("scheduledDate", getScheduledDate())
            .append("visitorInTime", getVisitorInTime())
            .append("visitorOutTime", getVisitorOutTime())
            .append("stateVisit", getStateVisit())
            .append("typeTicket", getTypeTicket())
            .append("visitorsName", getVisitorsName())
            .append("phoneNumber", getPhoneNumber())
            .toString();
    }


}
