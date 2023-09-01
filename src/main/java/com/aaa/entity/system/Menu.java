package com.aaa.entity.system;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
public class Menu implements Serializable {
    private Long menuId;
    private String menuName;
    private Long parentId;
    private Long orderNum;
    private String url;
    private String menuType;
    private String visible;
    private String perms;
    private String icon;
    private String createBy;
    //从后端返回json数据到前端页面的时候使用
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从前端页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    private String updateBy;
    //从后端返回json数据到前端页面的时候使用
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从前端页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;
    private String remark;

}
