package com.aaa.service.scl.impl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.scl.QuestionSclDao;
import com.aaa.entity.scl.QuestionScl;
import com.aaa.service.scl.QuestionSclService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/2 22:04
 * @description：
 * @modified By：
 * @version:
 */
@Service
public class QuestionSclServiceImpl implements QuestionSclService {

    @Autowired
    private QuestionSclDao questionSclDao;

    @Override
    public Page<QuestionScl> getAll(Integer page, Integer limit, QuestionScl questionScl) {
        PageHelper.startPage(page, limit);
        return (Page<QuestionScl>) questionSclDao.getAll(questionScl);
    }

    @Override
    public List<QuestionScl> getAllByStatus() {
        return questionSclDao.getAllByStatus();
    }

    @Override
    public Integer saveQuestionScl(QuestionScl questionScl) {
        if (ObjectUtil.isEmpty(questionScl.getStatus())){
            questionScl.setStatus(0);
        }
        return questionSclDao.saveQuestionScl(questionScl);
    }

    /**
     * 修改数据
     *
     * @param questionScl 实例对象
     * @return 实例对象
     */
    @Override
    public Integer updateQuestionScl(QuestionScl questionScl) {

        if (ObjectUtil.isEmpty(questionScl.getStatus())){
            questionScl.setStatus(0);
        }

        return questionSclDao.updateQuestionScl(questionScl);
    }

    @Override
    public Integer deleteQuestionScl(Integer[] ids) {
        return questionSclDao.deleteQuestionScl(ids);
    }

    @Override
    public Integer querySclQuesName(QuestionScl questionScl) {
        return questionSclDao.querySclQuesName(questionScl);
    }

}
