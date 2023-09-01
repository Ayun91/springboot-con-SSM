package com.aaa.dao.mht;

import com.aaa.entity.mht.QuestionMht;
import com.github.pagehelper.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 心理健康诊断测验(QuestionMht)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-01 09:40:42
 */
public interface QuestionMhtDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    List<QuestionMht> getAllByStatus();
    QuestionMht queryById(Integer id);



    List<QuestionMht> repetion(QuestionMht questionMht);

    int insert(QuestionMht questionMht);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<QuestionMht> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<QuestionMht> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<QuestionMht> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<QuestionMht> entities);


    int update(QuestionMht questionMht);


    Page<QuestionMht> getAll(QuestionMht questionMht);
    /**
     * 通过主键删除数据
     *
     * @param ids 主键
     * @return 影响行数
     */
    Integer deleteByIds(@Param("ids") Integer[] ids);

    List<QuestionMht> getDictionary();

}

