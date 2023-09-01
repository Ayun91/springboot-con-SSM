package com.aaa.entity.system;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * (Userinfo)实体类
 *
 * @author makejava
 * @since 2022-08-30 21:23:23
 */
@Data
public class Userinfo implements Serializable {
    private static final long serialVersionUID = -30714156846236122L;
    /**
     * ID
     */
    private Integer userid;
    /**
     * 部门
     */
    private Integer deptid;
    /**
     * 真实姓名
     */
    private String username;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 电话
     */
    private String phonenumber;
    /**
     * 性别(1男 0女)
     */
    private String sex;
    /**
     * 头像
     */
    private String avatar;
    /**
     * 密码
     */
    private String password;
    /**
     * 盐值
     */
    private String salt;
    /**
     * 状态（1正常 0停用）
     */
    private String status;
    /**
     * 删除标记（1正常 2删除）
     */
    private String delFlag;
    /**
     * 创建人
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
     * 修改人
     */
    private String updateBy;
    /**
     * 修改时间
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
    /**
     * 角色id
     */
    private Integer roleId;

}

