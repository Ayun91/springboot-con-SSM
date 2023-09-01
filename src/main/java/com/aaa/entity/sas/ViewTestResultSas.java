package com.aaa.entity.sas;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * (ViewTestResultSas)实体类
 *
 * @author makejava
 * @since 2022-09-06 09:32:50
 */
@Data
public class ViewTestResultSas implements Serializable {
    private static final long serialVersionUID = -24749524893161302L;
    
    private Integer id;
    
    private String name;
    
    private String phone;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    
    private Integer forward;
    
    private Integer inversion;

    private Integer score;

    private String degree;
    
    private Integer testPlanId;

    private String testName;

}

