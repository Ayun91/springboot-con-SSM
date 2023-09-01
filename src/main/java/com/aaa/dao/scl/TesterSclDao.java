package com.aaa.dao.scl;

import com.aaa.entity.scl.TesterScl;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 性格测试者(TesterScl)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-02 19:44:40
 */
public interface TesterSclDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TesterScl queryById(Integer id);


    /**
     * 新增数据
     *
     * @param testerScl 实例对象
     * @return 影响行数
     */
    int insert(TesterScl testerScl);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<TesterScl> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<TesterScl> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<TesterScl> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<TesterScl> entities);

    /**
     * 修改数据
     *
     * @param testerScl 实例对象
     * @return 影响行数
     */
    int update(TesterScl testerScl);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

    TesterScl getTesterSclByPhone(String phone);
}

