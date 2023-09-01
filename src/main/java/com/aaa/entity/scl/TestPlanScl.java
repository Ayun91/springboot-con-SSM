package com.aaa.entity.scl;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 测试计划Scl(TblTestPlanScl)实体类
 *
 * @author makejava
 * @since 2022-08-30 10:40:07
 */
@Data
public class TestPlanScl implements Serializable {
    private static final long serialVersionUID = 349956662319746723L;
    /**
     * 测试计划id
     */
    private Integer id;
    /**
     * 测试名称
     */
    private String testName;
    /**
     * 测试代码(随机生成)
     */
    private String testCode;
    /**
     * 开始时间
     */
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date testBegin;
    /**
     * 结束时间
     */
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date testEnd;
    /**
     * 创建时间
     */
    //从后端返回json数据到前端页面的时候使用
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从前端页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 创建人
     */
    private String createBy;
    /**
     * 修改时间
     */
    //从后端返回json数据到前端页面的时候使用
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从前端页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;
    /**
     * 修改人
     */
    private String updateBy;
    /**
     * 备注
     */
    private String remark;
    
    private Integer flag;

}

