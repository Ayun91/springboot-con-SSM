package com.aaa.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * (TblTestResultSds)实体类
 *
 * @author makejava
 * @since 2022-09-03 09:45:44
 */
@Data
public class ResultSds implements Serializable {
    private static final long serialVersionUID = -68307816107810290L;

    private Integer id;

    private String name;

    private String phone;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private String forward;

    private String inversion;

    private Integer score;

    private Integer testPlanId;

    private String testName;


    @Override
    public String toString() {
        return "ResultSds{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", createTime=" + createTime +
                ", forward='" + forward + '\'' +
                ", inversion='" + inversion + '\'' +
                ", testPlanId=" + testPlanId +
                ", testName='" + testName + '\'' +
                '}';
    }
}

