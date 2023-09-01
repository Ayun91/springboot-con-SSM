package com.aaa.entity.sds;

import java.io.Serializable;

/**
 * (TestResultSds)实体类
 *
 * @author makejava
 * @since 2022-09-07 09:39:20
 */
public class TestResultSds implements Serializable {
    private static final long serialVersionUID = -86842296382499581L;
    
    private Integer id;
    
    private Integer testerId;
    
    private Integer questionId;
    
    private Integer answer;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTesterId() {
        return testerId;
    }

    public void setTesterId(Integer testerId) {
        this.testerId = testerId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getAnswer() {
        return answer;
    }

    public void setAnswer(Integer answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "TestResultSds{" +
                "id=" + id +
                ", testerId=" + testerId +
                ", questionId=" + questionId +
                ", answer=" + answer +
                '}';
    }
}

