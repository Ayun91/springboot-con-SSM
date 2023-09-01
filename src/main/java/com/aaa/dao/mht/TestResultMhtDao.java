package com.aaa.dao.mht;

import com.aaa.entity.mht.TestResultMht;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (TestResultMht)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-06 17:34:04
 */
public interface TestResultMhtDao {

    TestResultMht queryById(Integer id);
    int insert(TestResultMht testResultMht);


    int insertBatch(@Param("entities") List<TestResultMht> entities);


    int insertOrUpdateBatch(@Param("entities") List<TestResultMht> entities);
    int update(TestResultMht TestResultMht);
    int deleteById(Integer id);

}

