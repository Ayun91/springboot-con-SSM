package com.aaa.dao.sds;

import com.aaa.entity.sds.TestPlanSds;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 测试计划fpa(TestPlanSds)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-01 20:49:38
 */
public interface TestPlanSdsDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TestPlanSds queryById(Integer id);



    /**
     * 查询指定行数据
     *
     * @param testPlanSds 查询条件
     * @param pageable         分页对象
     * @return 对象列表
     */




    /**
     * 统计总行数
     *
     * @param testPlanSds 查询条件
     * @return 总行数
     */
    long count(TestPlanSds testPlanSds);

    /**
     * 新增数据
     *
     * @param testPlanSds 实例对象
     * @return 影响行数
     */
    int insert(TestPlanSds testPlanSds);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<TestPlanSds> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<TestPlanSds> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<TestPlanSds> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<TestPlanSds> entities);

    /**
     * 修改数据
     *
     * @param testPlanSds 实例对象
     * @return 影响行数
     */
    int update(TestPlanSds testPlanSds);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(List list);

        List<TestPlanSds> queryByAll(TestPlanSds testPlanSds);
        List<TestPlanSds> queryByAllView(TestPlanSds testPlanSds);

    /**
     * @create by: childe范
     * @description: 查询计划是否重名
     * @create time: 2022/9/2 9:37
     * @param testPlanSds
     * @return
     */

    Integer repetitionName(TestPlanSds testPlanSds);


}

