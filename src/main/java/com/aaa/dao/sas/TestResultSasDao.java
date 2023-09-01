package com.aaa.dao.sas;

import com.aaa.entity.sas.TestResultSas;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author ：Teacher凡
 * @date ：Created in 2022/9/5 14:58
 * @description：
 * @modified By：
 * @version:
 */
public interface TestResultSasDao {
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TestResultSas queryById(Integer id);

    /**
     * 新增数据
     *
     * @param testResultSas 实例对象
     * @return 影响行数
     */
    int insert(TestResultSas testResultSas);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<TestResultFpa> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<TestResultSas> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<TestResultFpa> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<TestResultSas> entities);

    /**
     * 修改数据
     *
     * @param testResultSas 实例对象
     * @return 影响行数
     */
    int update(TestResultSas testResultSas);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);
}
