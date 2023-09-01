package com.aaa.entity.fpa;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 性格测试者(TesterFpa)实体类
 *
 * @author makejava
 * @since 2022-09-02 17:27:58
 */
@Data
public class TesterFpa implements Serializable {
    private static final long serialVersionUID = 197589288615732300L;
    /**
     * 主键
     */
    private Integer id;
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
    private Date createTime;
    /**
     * 测试计划id
     */
    private Integer testPlanId;

}

