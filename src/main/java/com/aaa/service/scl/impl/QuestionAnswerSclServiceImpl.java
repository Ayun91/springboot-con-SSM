package com.aaa.service.scl.impl;

import com.aaa.dao.scl.QuestionAnswerSclDao;
import com.aaa.entity.scl.QuestionAnswerScl;
import com.aaa.entity.system.PageSortEntity;
import com.aaa.service.scl.QuestionAnswerSclService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (QuestionAnswerScl)表服务实现类
 *
 * @author makejava
 * @since 2022-09-09 14:59:38
 */
@Service
public class QuestionAnswerSclServiceImpl implements QuestionAnswerSclService {
    @Autowired
    private QuestionAnswerSclDao questionAnswerSclDao;

    /**
     * 通过ID查询单条数据
     *
     * @param
     * @return 实例对象
     */
    @Override
    public Page<QuestionAnswerScl> queryById(PageSortEntity pageSortEntity, String id) {
        PageHelper.startPage(pageSortEntity.getPage(), pageSortEntity.getLimit(),pageSortEntity.getOrderString());
        List<QuestionAnswerScl> questionAnswerScls = questionAnswerSclDao.queryById(id);
        Page<QuestionAnswerScl> page = (Page<QuestionAnswerScl>)questionAnswerScls;
        return page;
    }

}
