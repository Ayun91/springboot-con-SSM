package com.aaa.entity.mht;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 心理健康诊断测验(QuestionMht)实体类
 *
 * @author makejava
 * @since 2022-09-02 08:44:12
 */
@Data
public class QuestionMht implements Serializable {
    private static final long serialVersionUID = 183665429271381584L;
    /**
     * 问题编号
     */
    private Integer id;

    private String question;

    private String optionTrue;

    private String optionFalse;

    private Integer type;

    private Integer status;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private String createBy;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    /**
     * 题目类型
     */
    private String dictionaryName;
    /**
     * 字典类型与type对应
     */
    private String dictionaryId;

    private String updateBy;

    private Integer flag;

}

