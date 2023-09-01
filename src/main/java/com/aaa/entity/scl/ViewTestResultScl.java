package com.aaa.entity.scl;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * (ViewTestResultScl)实体类
 *
 * @author makejava
 * @since 2022-09-06 21:23:51
 */
@Data
public class ViewTestResultScl implements Serializable {
    private static final long serialVersionUID = 651283819978925989L;
    
    private Integer testerId;
    
    private Double body;
    
    private Double force;
    
    private Double interpersonal;
    
    private Double depressed;
    
    private Double anxious;
    
    private Double hostility;
    
    private Double terror;
    
    private Double paranoia;
    
    private Double psychotic;
    
    private Double sleepDiet;
    /**
     * 手机号
     */
    private String phone;
    /**
     * 测试者姓名
     */
    private String name;
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

    private String testName;
}

