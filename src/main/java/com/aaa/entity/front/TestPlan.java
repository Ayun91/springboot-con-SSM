package com.aaa.entity.front;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * (TestPlan)实体类
 *
 * @author makejava
 * @since 2022-09-02 19:08:29
 */
@Data
public class TestPlan implements Serializable {
    private static final long serialVersionUID = -57234772700666336L;

    private Integer id;

    private String testName;

    private Integer testCode;

    private Date testBegin;

    private Date testEnd;

    private Date createTime;

    private String createBy;

    private Date updateTime;

    private String updateBy;

    private String remark;

    private String type;

}

