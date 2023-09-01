package com.aaa.service.scl;

import com.aaa.entity.scl.QuestionAnswerScl;
import com.aaa.entity.system.PageSortEntity;
import com.github.pagehelper.Page;

/**
 * (QuestionAnswerScl)表服务接口
 *
 * @author makejava
 * @since 2022-09-09 14:59:38
 */
public interface QuestionAnswerSclService {

    /**
     * 通过ID查询单条数据
     *
     * @param  主键
     * @return 实例对象
     */
    Page<QuestionAnswerScl> queryById(PageSortEntity pageSortEntity, String id);


}
