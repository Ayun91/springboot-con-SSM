package com.aaa.entity.system;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 角色信息表(TblRole)实体类
 *
 * @author makejava
 * @since 2022-08-31 16:10:58
 */
@Data
public class Role implements Serializable {
    private static final long serialVersionUID = -13022412339511530L;
    /**
     * 角色ID
     */
    private Integer roleId;
    /**
     * 角色名称
     */
    private String roleName;
    /**
     * 角色权限字符串
     */
    private String roleKey;
    /**
     * 显示顺序
     */
    private Integer roleSort;
    /**
     * 角色状态（0正常 1停用）
     */
    private String status;
    /**
     * 删除标志（0代表存在 2代表删除）
     */
    private String flag;
    /**
     * 创建者
     */
    private String createBy;
    /**
     * 创建时间
     */
    //从后端返回json数据到前端页面的时候使用
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从前端页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 更新者
     */
    private String updateBy;
    /**
     * 更新时间
     */
    //从后端返回json数据到前端页面的时候使用
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    //从前端页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;
    /**
     * 备注
     */
    private String remark;

}

