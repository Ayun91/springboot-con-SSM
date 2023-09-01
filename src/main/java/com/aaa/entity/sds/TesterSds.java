package com.aaa.entity.sds;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 性格测试者(TesterSds)实体类
 *
 * @author makejava
 * @since 2022-09-05 11:50:55
 */
@Data
public class TesterSds implements Serializable {
    private static final long serialVersionUID = 383482325712669609L;

    private Integer id;

    private String name;

    private String phone;

    private Date createTime;

    private Integer testPlanId;



}

