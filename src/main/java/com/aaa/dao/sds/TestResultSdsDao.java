package com.aaa.dao.sds;

import com.aaa.entity.sds.TestResultSds;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (TestResultSds)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-07 09:39:20
 */
public interface TestResultSdsDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TestResultSds queryById(Integer id);



    /**
     * 查询指定行数据
     *
     * @param testResultSds 查询条件
     * @param pageable         分页对象
     * @return 对象列表
     */


    /**
     * 统计总行数
     *
     * @param testResultSds 查询条件
     * @return 总行数
     */





    /**
     * 新增数据
     *
     * @param testResultSds 实例对象
     * @return 影响行数
     */
    int insert(TestResultSds testResultSds);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<TestResultSds> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<TestResultSds> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<TestResultSds> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<TestResultSds> entities);

    /**
     * 修改数据
     *
     * @param testResultSds 实例对象
     * @return 影响行数
     */
    int update(TestResultSds testResultSds);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}

