package com.aaa.dao.sds;


import com.aaa.entity.sds.QuestionSds;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 问题表(TblQuestionSds)表数据库访问层
 *
 * @author makejava
 * @since 2022-07-15 20:48:06
 */
public interface TblQuestionSdsDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionSds queryById(Integer id);




    /**
     * 统计总行数
     *
     * @param tblQuestionSds 查询条件
     * @return 总行数
     */



    /**
     * 新增数据
     *
     * @param tblQuestionSds 实例对象
     * @return 影响行数
     */
    int insert(QuestionSds tblQuestionSds);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<TblQuestionSds> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<QuestionSds> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<TblQuestionSds> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<QuestionSds> entities);

    /**
     * 修改数据
     *
     * @param tblQuestionSds 实例对象
     * @return 影响行数
     */
    int update(QuestionSds tblQuestionSds);

    /**
     * 通过主键删除数据
     *
     * @param idList 主键
     * @return 影响行数
     */
    int deleteById(List list);


   // Integer deleteById(@Param("idList") Integer[] idList;

    /**
     * @param TblQuestionSds
     * @return Integer
     * @create by: feng (zhaixing@163.com)
     * @description: 查询题目是否重名
     * @create time: 2022/7/14 17:03
     */
    Integer repetitionName(QuestionSds TblQuestionSds);

    List<QuestionSds> findAllQuestion();

    List<QuestionSds> findAllQuestionByCondition(QuestionSds tblQuestionSds);

}

