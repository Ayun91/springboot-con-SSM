package com.aaa.dao.sas;

import com.aaa.entity.sas.QuestionSas;
import com.github.pagehelper.Page;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 问题表(Sas)表数据库访问层
 *
 * @author makejava
 * @since 2022-08-29 15:37:57
 */
@Repository
public interface QuestionSasDao {
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionSas queryById(Integer id);



    /**
     * 新增数据
     *
     * @param questionSas 实例对象
     * @return 影响行数
     */
    int insert(QuestionSas questionSas);

    /**
     * 修改数据
     *
     * @param questionSas 实例对象
     * @return 影响行数
     */
    int update(QuestionSas questionSas);


    Page<QuestionSas> getAll(QuestionSas questionSas);

    Integer deleteByIds(@Param("ids") Integer[] ids);

    List<QuestionSas> getAllByStatus();

    /**
     * 题目唯一性校验
     */
    List<QuestionSas> repetitionName(QuestionSas questionSas);
}

