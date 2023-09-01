package com.aaa.entity.system;

import lombok.Data;

import java.util.List;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/5 10:55
 * @description：
 * @modified By：
 * @version:
 */
@Data
public class LayUiTree {
    private String title;
    private Long id;
    private String field;
    private boolean checked;
    private boolean spread;
    private String url;
    private String icon;
    private List<LayUiTree> children;
}