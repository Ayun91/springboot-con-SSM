package com.aaa.dao.fpa;

import com.aaa.entity.fpa.QuestionFpa;
import com.github.pagehelper.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 问题表(QuestionFpa)表数据库访问层
 *
 * @author makejava
 * @since 2022-08-29 18:53:49
 */
public interface QuestionFpaDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionFpa queryById(Integer id);


    /**
     * 新增数据
     *
     * @param questionFpa 实例对象
     * @return 影响行数
     */
    int insert(QuestionFpa questionFpa);


    /**
     * 修改数据
     *
     * @param questionFpa 实例对象
     * @return 影响行数
     */
    int update(QuestionFpa questionFpa);


    Page<QuestionFpa> getAll(QuestionFpa questionFpa);

    Integer deleteByIds(@Param("ids") Integer[] ids);

    List<QuestionFpa> getAllByStatus();

    List<QuestionFpa> repetitionName(String question);

    QuestionFpa getById(Integer id);
}

