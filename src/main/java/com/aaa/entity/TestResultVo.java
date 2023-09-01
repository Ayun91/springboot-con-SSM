package com.aaa.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (TestResultFpa)实体类
 *
 * @author
 * @since 2022-09-02 15:13:43
 */
@Data
public class TestResultVo implements Serializable {
    private static final long serialVersionUID = 905389188780319942L;
    /**
     * 主键自增
     */
    private Integer id;
    /**
     * 测试人员id
     */
    private Integer testerId;
    /**
     * 测试题id
     */
    private Integer questionId;
    /**
     * 题目答案
     */
    private Integer answer;



}

