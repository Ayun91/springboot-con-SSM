package com.aaa.service.sas;


import com.aaa.entity.sas.QuestionSas;
import com.github.pagehelper.Page;

import java.util.List;


/**
 * 问题表(Sas)表服务接口
 *
 * @author makejava
 * @since 2022-08-29 15:37:57
 */
public interface QuestionSasService {
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
     * @param  questionSas 实例对象
     * @return 实例对象
     */
    Integer save(QuestionSas questionSas);

    /**
     * 修改数据
     *
     * @param  questionSas 实例对象
     * @return 实例对象
     */
    Integer update(QuestionSas questionSas);


    Page<QuestionSas> findAll(Integer page, Integer limit, QuestionSas questionSas);

    Integer deleteByIds(Integer[] ids);

    List<QuestionSas> getAllByStatus();

    /**
     * 题目唯一性校验
     */
    boolean repetitionName(QuestionSas questionSas);
}
