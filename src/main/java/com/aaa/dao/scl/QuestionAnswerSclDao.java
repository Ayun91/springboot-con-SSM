package com.aaa.dao.scl;

import com.aaa.entity.scl.QuestionAnswerScl;

import java.util.List;

/**
 * (QuestionAnswerScl)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-09 14:59:38
 */
public interface QuestionAnswerSclDao {

    /**
     * 通过ID查询单条数据
     *
     * @param  主键
     * @return 实例对象
     */
    List<QuestionAnswerScl> queryById(String id);


}

