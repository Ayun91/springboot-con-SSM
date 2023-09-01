package com.aaa.entity.sds;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 测试计划fpa(TestPlanSds)实体类
 *
 * @author makejava
 * @since 2022-09-01 20:49:38
 */
@Data
public class TestPlanSds implements Serializable {
    private static final long serialVersionUID = 443156724145895901L;
    
    private Integer id;
    
    private String testName;
    
    private String testCode;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date testBegin;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date testEnd;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    
    private String createBy;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date updateTime;
    
    private String updateBy;
    
    private String remark;
    
    private Integer flag;
}

