package com.aaa.dao.sds;

import com.aaa.entity.sds.QuestionAnswerSds;

import java.util.List;

/**
 * (QuestionAnswerSds)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-09 12:33:52
 */
public interface QuestionAnswerSdsDao {

    /**
     * 通过ID查询单条数据
     *
     * @param  主键
     * @return 实例对象
     */
    List<QuestionAnswerSds> queryById(String id);


}

