package com.aaa.entity.system;

import cn.hutool.core.util.ObjectUtil;
import lombok.Data;

/**
 * @author ：Teacher陈（86521760@qq.com）
 * @date ：Created in 2022/8/26 9:51
 * @description：分页信息和排序信息
 * @modified By：
 * @version:
 */
@Data
public class PageSortEntity {
    Integer page;
    Integer limit;
    String field;
    String order;
    /**
     * @create by: Teacher陈（86521760@qq.com）
     * @description: 拼接排序sql代码段，给mybatis分页插件使用
     * @create time: 2022/8/26 11:12
     * @param
     * @return java.lang.String
     */
   public String  getOrderString(){
       if(ObjectUtil.isNotEmpty(field)){
           return   this.getField()+" "+this.getOrder();
       }
       return null;

    }
    /**
     * @create by: Teacher陈（86521760@qq.com）
     * @description: 不分页
     * @create time: 2022/9/2 12:00
     * @param
     * @return com.aaa.entity.system.PageSortEntity
     */
   public static PageSortEntity noPage(){

       PageSortEntity pageSortEntity = new PageSortEntity();
       pageSortEntity.setPage(1);
       pageSortEntity.setLimit(Integer.MAX_VALUE);
       return pageSortEntity;

    }
}
