package com.aaa.entity.sds;

import java.io.Serializable;

/**
 * (QuestionAnswerSds)实体类
 *
 * @author makejava
 * @since 2022-09-09 12:33:52
 */
public class QuestionAnswerSds implements Serializable {
    private static final long serialVersionUID = 237821045459619716L;
    
    private Integer id;
    
    private String question;
    
    private Integer type;
    
    private String result;
    
    private String answer;
    
    private Integer testerId;
    
    private String dictionaryName;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public Integer getTesterId() {
        return testerId;
    }

    public void setTesterId(Integer testerId) {
        this.testerId = testerId;
    }

    public String getDictionaryName() {
        return dictionaryName;
    }

    public void setDictionaryName(String dictionaryName) {
        this.dictionaryName = dictionaryName;
    }

}

