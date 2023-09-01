package com.aaa.entity.log;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * (Log)实体类
 *
 * @author makejava
 * @since 2022-09-03 09:27:44
 */
@Data
public class Logger implements Serializable {
    private static final long serialVersionUID = -96449451914269005L;
    /**
     * 自增主键
     */
    private Integer id;
    /**
     * 登录名
     */
    private String loginName;
    /**
     * 用户名
     */
    private String userName;
    /**
     * IP地址
     */
    private String ip;
    /**
     * 类名
     */
    private String className;
    /**
     * 方法名
     */
    private String methodName;
    /**
     * 参数
     */
    private String params;
    /**
     * 创建时间
     */
    //从后端返回json数据到前端页面的时候使用
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从前端页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 操作的结果
     */
    private String result;

}

