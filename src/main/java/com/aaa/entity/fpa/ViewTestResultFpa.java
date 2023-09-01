package com.aaa.entity.fpa;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * (ViewTestResultFpa)实体类
 *
 * @author makejava
 * @since 2022-09-05 15:11:49
 */
@Data
public class ViewTestResultFpa implements Serializable {
    private static final long serialVersionUID = -79911435442121686L;
    /**
     * 测试人员id
     */
    private Integer testerId;

    private String redCount;

    private String blueCount;

    private String yellowCount;

    private String greenCount;
    /**
     * 测试者姓名
     */
    private String name;
    /**
     * 手机号
     */
    private String phone;
    /**
     * 测试时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 测试计划id
     */
    private Integer testPlanId;
    /**
     * 测试名称
     */
    private String testName;

}

