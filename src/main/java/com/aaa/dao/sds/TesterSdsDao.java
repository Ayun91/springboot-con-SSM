package com.aaa.dao.sds;

import com.aaa.entity.sds.TesterSds;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 性格测试者(TesterSds)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-05 11:50:55
 */
public interface TesterSdsDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TesterSds queryById(Integer id);

    TesterSds queryByPhone(String phone);

    /**
     * 统计总行数
     *
     * @param testerSds 查询条件
     * @return 总行数
     */




    /**
     * 新增数据
     *
     * @param testerSds 实例对象
     * @return 影响行数
     */
    int insert(TesterSds testerSds);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<TesterSds> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<TesterSds> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<TesterSds> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<TesterSds> entities);

    /**
     * 修改数据
     *
     * @param testerSds 实例对象
     * @return 影响行数
     */
    int update(TesterSds testerSds);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}

