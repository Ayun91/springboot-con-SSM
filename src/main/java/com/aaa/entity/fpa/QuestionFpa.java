package com.aaa.entity.fpa;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 问题表(QuestionFpa)实体类
 *
 * @author makejava
 * @since 2022-08-29 18:51:42
 */
@Data
public class QuestionFpa implements Serializable {
    private static final long serialVersionUID = 105723306441762633L;
    /**
     * 问题编号
     */
    private Integer id;

    private String question;

    private String optionA;

    private String optionB;

    private String optionC;

    private String optionD;
    /**
     * 预留字段
     */
    private Integer type;
    /**
     * 状态
     */
    private Integer status;
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

    //从后端返回json数据到前端页面的时候使用
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从前端页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date testBegin;
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

    private Integer flag;


}

