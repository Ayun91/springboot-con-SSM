package com.aaa.dao.scl;

import com.aaa.entity.scl.TestResultScl;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (TestResultScl)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-02 21:14:07
 */
public interface TestResultSclDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TestResultScl queryById(Integer id);

    /**
     * 新增数据
     *
     * @param testResultScl 实例对象
     * @return 影响行数
     */
    int insert(TestResultScl testResultScl);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<TestResultScl> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<TestResultScl> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<TestResultScl> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<TestResultScl> entities);

    /**
     * 修改数据
     *
     * @param testResultScl 实例对象
     * @return 影响行数
     */
    int update(TestResultScl testResultScl);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}

