package com.aaa.entity.sds;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 问题表(TblQuestionSds)实体类
 *
 * @author makejava
 * @since 2022-07-15 20:48:06
 */
@Data
public class QuestionSds implements Serializable {
    private static final long serialVersionUID = -24972340647244925L;

    private Integer id;

    private String question;

    private String optionA;

    private String optionB;

    private String optionC;

    private String optionD;

    private Integer type;

    private Integer status;
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

    private Integer flag;




}

