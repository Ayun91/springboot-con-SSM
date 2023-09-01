package com.aaa.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author ：肖成杰（1752167034@qq.com）
 * @date ：Created in 2022/9/15 16:27
 * @description：
 * @modified By：
 * @version:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReturnRecords {

    /**
     * id
     */
    private Integer id;
    /**
     * 测试者id
     */
    private Integer testerId;
    /**
     * 测试者姓名
     */
    private String testerName;
    /**
     * 手机号
     */
    private String phone;
    /**
     * 文本域
     */
    private String record;
    /**
     * 测试计划名称
     */
    private String testName;
    /**
     * 测试类型
     */
    private String type;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date returnTime;
    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 创建人
     */
    private String createBy;
    /**
     * 修改时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;
    /**
     * 修改人
     */
    private String updateBy;
    /**
     * 备注
     */
    private String remark;

}