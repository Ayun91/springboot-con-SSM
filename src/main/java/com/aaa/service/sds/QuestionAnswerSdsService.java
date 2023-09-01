package com.aaa.service.sds;

import com.aaa.entity.sds.QuestionAnswerSds;
import com.aaa.entity.system.PageSortEntity;
import com.github.pagehelper.Page;

/**
 * (QuestionAnswerSds)表服务接口
 *
 * @author makejava
 * @since 2022-09-09 12:33:53
 */
public interface QuestionAnswerSdsService {

    /**
     * 通过ID查询单条数据
     *
     * @param  主键
     * @return 实例对象
     */
    Page<QuestionAnswerSds> queryById(PageSortEntity pageSortEntity, String id);


}
