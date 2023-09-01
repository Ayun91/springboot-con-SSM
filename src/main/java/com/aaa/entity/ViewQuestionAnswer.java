package com.aaa.entity;

import lombok.Data;

/**
 * @author ：张子恒（1250176952@qq.com）
 * @date ：Created in 2022/9/9 12:10
 * @description：
 * @modified By：
 * @version:
 */
@Data
public class ViewQuestionAnswer {
    private Integer id;
    private String question;
    private Integer type;
    private String result;
    private String answer;
    private Integer testerId;
    private String dictionaryName;
}

