package com.aaa.dao.fpa;

import com.aaa.entity.fpa.TestResultFpa;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (TestResultFpa)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-02 21:14:07
 */
public interface TestResultFpaDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TestResultFpa queryById(Integer id);

    /**
     * 新增数据
     *
     * @param testResultFpa 实例对象
     * @return 影响行数
     */
    int insert(TestResultFpa testResultFpa);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<TestResultFpa> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<TestResultFpa> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<TestResultFpa> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<TestResultFpa> entities);

    /**
     * 修改数据
     *
     * @param testResultFpa 实例对象
     * @return 影响行数
     */
    int update(TestResultFpa testResultFpa);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}

