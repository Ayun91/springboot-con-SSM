package com.aaa.service.fpa;

import com.aaa.entity.fpa.QuestionFpa;
import com.github.pagehelper.Page;

import java.util.List;

/**
 * 问题表(QuestionFpa)表服务接口
 *
 * @author makejava
 * @since 2022-08-29 18:54:03
 */
public interface QuestionFpaService {

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
     * @return 实例对象
     */
    Integer saveQuestionFpa(QuestionFpa questionFpa);

    /**
     * 修改数据
     *
     * @param questionFpa 实例对象
     * @return 实例对象
     */
    Integer updateQuestionFpa(QuestionFpa questionFpa);


    Page<QuestionFpa> findAll(Integer page, Integer limit, QuestionFpa questionFpa);

    Integer deleteByIds(Integer[] ids);

    List<QuestionFpa> getAllByStatus();

    List<QuestionFpa> repetitionName(String question);

    QuestionFpa getById(Integer id);
}
