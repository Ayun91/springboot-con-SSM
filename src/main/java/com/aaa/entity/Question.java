package com.aaa.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 问题表(QuestionFpa)实体类
 *
 * @author
 * @since 2022-07-06 11:51:33
 */
@Data
public class Question implements Serializable {
    private static final long serialVersionUID = 888480553014806567L;
    /**
     * 问题编号
     */
    private Integer id;

    private String question;

    private String optionA;

    private String optionB;

    private String optionC;

    private String optionD;
    private String optionE;
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
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 创建人
     */
    private String createBy;
    /**
     * 修改时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;
    /**
     * 修改人
     */
    private String updateBy;

    private Integer flag;

}

