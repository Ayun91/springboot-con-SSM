package com.aaa.entity.front;

import lombok.Data;

import java.io.Serializable;

/**
 * 问题表(QuestionFpa)实体类
 *
 * @author makejava
 * @since 2022-08-29 18:51:42
 */
@Data
public class Question implements Serializable {
    private static final long serialVersionUID = 105723306441762633L;
    /**
     * 问题编号
     */
    private Integer id;

    private String question;
    private String optionTrue;
    private String optionFalse;
    private String optionA;

    private String optionB;

    private String optionC;

    private String optionD;

    private String optionE;
    /**
     * 预留字段
     */
    private Integer type;
    /**
     * 状态
     */
    private Integer status;


    private Integer flag;
}

