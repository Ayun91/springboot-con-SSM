package com.aaa.entity.mht;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * (TesterMht)实体类
 *
 * @author makejava
 * @since 2022-09-06 09:47:27
 */
@Data
public class TesterMht implements Serializable {
    private static final long serialVersionUID = 764529674665273844L;

    private Integer id;

    private String name;

    private String phone;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private Integer testPlanId;
    private Integer status;

}

