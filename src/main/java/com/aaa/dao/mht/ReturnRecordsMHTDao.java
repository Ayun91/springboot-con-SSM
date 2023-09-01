package com.aaa.dao.mht;

import com.aaa.entity.ReturnRecords;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author ：肖成杰（1752167034@qq.com）
 * @date ：Created in 2022/9/15 16:43
 * @description：访谈记录接口
 * @modified By：
 * @version: 1.0
 */
public interface ReturnRecordsMHTDao {

    List<ReturnRecords> getReturnRecords(ReturnRecords records);


    /**
     * 新增数据
     *
     * @param returnRecords 实例对象
     * @return 影响行数
     */
    int insertMHT(ReturnRecords returnRecords);

    /**
     * 通过ID删除回访记录
     *
     * @param  id
     * @return 实例对象
     */
    int deleteMHT(@Param("id") int[] id);
    /**
     * 通过ID修改回访记录
     *
     * @param
     * @return 实例对象
     */
    int updateMHT(ReturnRecords returnRecords);



}
