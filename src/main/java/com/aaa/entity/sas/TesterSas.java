package com.aaa.entity.sas;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/2 17:30
 * @description：
 * @modified By：
 * @version:
 */
@Data
public class TesterSas {
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
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 测试计划id
     */
    private Integer testPlanId;
    /**
     * 测试码
     */
    private String testCode;
    /**
     * 测试类型
     */
    private String type;

    private String testName;
}