package com.aaa.entity.sas;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class QuestionSas {

  private Integer id;
  private String question;
  private String optionA;
  private String optionB;
  private String optionC;
  private String optionD;
  private Integer type;
  private Integer status;
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
  @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
  private Date createTime;
  private String createBy;
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
  @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
  private Date updateTime;
  private String updateBy;
  private Integer flag;

}
