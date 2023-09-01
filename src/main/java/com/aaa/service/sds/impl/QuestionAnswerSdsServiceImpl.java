package com.aaa.service.sds.impl;

import com.aaa.dao.sds.QuestionAnswerSdsDao;
import com.aaa.entity.sds.QuestionAnswerSds;
import com.aaa.entity.system.PageSortEntity;
import com.aaa.service.sds.QuestionAnswerSdsService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (QuestionAnswerSds)表服务实现类
 *
 * @author makejava
 * @since 2022-09-09 12:33:53
 */
@Service
public class QuestionAnswerSdsServiceImpl implements QuestionAnswerSdsService {
    @Autowired
    private QuestionAnswerSdsDao questionAnswerSdsDao;

    /**
     * 通过ID查询单条数据
     *
     * @param
     * @return 实例对象
     */
    @Override
    public Page<QuestionAnswerSds> queryById(PageSortEntity pageSortEntity, String id) {
        PageHelper.startPage(pageSortEntity.getPage(), pageSortEntity.getLimit(), pageSortEntity.getOrderString());
        List<QuestionAnswerSds> questionAnswerSds = this.questionAnswerSdsDao.queryById(id);
        Page<QuestionAnswerSds> page = (Page<QuestionAnswerSds>)questionAnswerSds;
        return page;
    }

}
