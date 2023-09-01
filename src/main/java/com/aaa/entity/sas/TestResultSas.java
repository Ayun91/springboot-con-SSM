package com.aaa.entity.sas;


import lombok.Data;

import java.io.Serializable;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/2 21:09
 * @description：
 * @modified By：
 * @version:
 */
@Data
public class TestResultSas implements Serializable {

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