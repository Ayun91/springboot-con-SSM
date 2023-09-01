package com.aaa.service.fpa.impl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.fpa.QuestionFpaDao;
import com.aaa.entity.fpa.QuestionFpa;
import com.aaa.service.fpa.QuestionFpaService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * 问题表(QuestionFpa)表服务实现类
 *
 * @author makejava
 * @since 2022-08-29 18:54:03
 */
@Service
public class QuestionFpaServiceImpl implements QuestionFpaService {
    @Autowired
    private QuestionFpaDao questionFpaDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public QuestionFpa queryById(Integer id) {
        return this.questionFpaDao.queryById(id);
    }

    /**
     * 新增数据
     *
     * @param questionFpa 实例对象
     * @return 实例对象
     */
    @Override
    public Integer saveQuestionFpa(QuestionFpa questionFpa) {
        if (ObjectUtil.isEmpty(questionFpa.getStatus())){
            questionFpa.setStatus(0);
        }

        return questionFpaDao.insert(questionFpa);
    }

    /**
     * 修改数据
     *
     * @param questionFpa 实例对象
     * @return 实例对象
     */
    @Override
    public Integer updateQuestionFpa(QuestionFpa questionFpa) {

        if (ObjectUtil.isEmpty(questionFpa.getStatus())){
            questionFpa.setStatus(0);
        }

        return questionFpaDao.update(questionFpa);
    }


    @Override
    public Page<QuestionFpa> findAll(Integer page, Integer limit, QuestionFpa questionFpa) {

        PageHelper.startPage(page, limit);
        Page<QuestionFpa> pageResult = questionFpaDao.getAll(questionFpa);
        return pageResult;
    }

    @Override
    public Integer deleteByIds(Integer[] ids) {
        return questionFpaDao.deleteByIds(ids);

    }

    @Override
    public List<QuestionFpa> getAllByStatus() {
        return questionFpaDao.getAllByStatus();
    }

    @Override
    public List<QuestionFpa> repetitionName(String question) {
        return questionFpaDao.repetitionName(question);
    }

    @Override
    public QuestionFpa getById(Integer id) {
        return questionFpaDao.getById(id);
    }
}
