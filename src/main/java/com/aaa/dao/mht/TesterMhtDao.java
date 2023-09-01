package com.aaa.dao.mht;

import com.aaa.entity.mht.TesterMht;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (TesterMht)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-06 09:47:27
 */
public interface TesterMhtDao {

    Integer queryById(Integer id);
    TesterMht queryByPhone(String phone);
    int insert(TesterMht testerMht);
    int insertBatch(@Param("entities") List<TesterMht> entities);
    int insertOrUpdateBatch(@Param("entities") List<TesterMht> entities);
    int deleteById();

    Integer modify(TesterMht testerMht);

}

