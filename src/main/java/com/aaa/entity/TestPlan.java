package com.aaa.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * (TestPlan)实体类
 *
 * @author makejava
 * @since 2022-09-06 09:31:50
 */

@Data
public class TestPlan implements Serializable {
    private static final long serialVersionUID = -62069766479830163L;

    private Integer id;

    private String testName;

    private String testCode;

    private Date testBegin;

    private Date testEnd;

    private Date createTime;

    private String createBy;

    private Date updateTime;

    private String updateBy;

    private String remark;

    /**
     * 测试的类型有五种
     */

    private String type;


}

