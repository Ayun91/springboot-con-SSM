package com.aaa.entity.scl;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 问题表(QuestionScl)实体类
 *
 * @author makejava
 * @since 2022-09-02 14:50:46
 */
@Data
public class QuestionScl implements Serializable {
    private static final long serialVersionUID = 652192558897717335L;

    private Integer id;

    private String question;

    private String optionA;

    private String optionB;

    private String optionC;

    private String optionD;

    private String optionE;

    private Integer type;

    private Integer status;
    //从后端返回json数据到前端页面的时候使用
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从前端页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private String createBy;
    //从后端返回json数据到前端页面的时候使用
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从前端页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    private String updateBy;

    private Integer flag;

}

