package com.aaa.entity.sds;

import lombok.Data;

import java.util.Date;

/**
 * @author ：Student范锰豪（3126145672@qq.com）
 * @date ：Created in 2022/9/5 15:23
 * @description：
 * @modified By：
 * @version:
 */
@Data
public class TesterVo {


    private Integer id;

    private String name;

    private String phone;

    private Date createTime;

    private Integer testPlanId;

    /**
     * @create by: childe范
     * @description: 邀请码
     * @create time: 2022/9/6 9:27
     * @param null
     * @return
     */

    private String testCode;

    /**
     * 测试类型
     */
    private  Integer flag;

    private String testName;


}