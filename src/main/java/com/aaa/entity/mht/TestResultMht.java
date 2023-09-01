package com.aaa.entity.mht;

import lombok.Data;

import java.io.Serializable;

/**
 * (TestResultMht)实体类
 *
 * @author makejava
 * @since 2022-09-06 17:34:06
 */
@Data
public class TestResultMht implements Serializable {
    private static final long serialVersionUID = -66802958716507946L;
    
    private Integer id;
    
    private Integer testerId;
    
    private Integer questionId;
    
    private String answer;




}

