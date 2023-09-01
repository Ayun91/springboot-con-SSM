package com.aaa.entity.mht;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * (ViewTestResultMht)实体类
 *
 * @author makejava
 * @since 2022-09-07 16:29:32
 */
@Data
public class ViewTestResultMht implements Serializable {
    private static final long serialVersionUID = 284802506812542606L;

    private Integer testerId;

    private String effect;
   // 学习焦虑
    private String learnAnxiety;
    //对人焦虑
    private String person;
    //孤独
    private String lonely;
    //自责
    private String blame;
    //过敏
    private String allergy;
    //身体
    private String body;
    //恐怖
    private String terror;
    //冲动
    private String impulse;
    //全量表
    private String allscore;

    private String phone;

    private String testName;

    private String name;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private Integer testPlanId;

    private Integer status;


}

