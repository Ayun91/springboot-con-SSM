package com.aaa.entity.fpa;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (ResultDiv)实体类
 *
 * @author makejava
 * @since 2022-09-06 10:54:07
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResultDiv implements Serializable {
    private static final long serialVersionUID = -19916879882415982L;
    
    private Integer id;
    
    private String div1;
    
    private String div2;
    
    private String div3;

}

