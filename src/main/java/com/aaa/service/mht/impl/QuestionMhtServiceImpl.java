package com.aaa.service.mht.impl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.mht.QuestionMhtDao;
import com.aaa.entity.mht.QuestionMht;
import com.aaa.service.mht.QuestionMhtService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * 心理健康诊断测验(QuestionMht)表服务实现类
 *
 * @author makejava
 * @since 2022-09-01 09:40:50
 */
@Service
public class QuestionMhtServiceImpl implements QuestionMhtService {
    @Autowired
    private QuestionMhtDao questionMhtDao;

    @Override
    public List<QuestionMht> getAllByStatus() {
        return questionMhtDao.getAllByStatus();
    }

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public QuestionMht queryById(Integer id) {
        return this.questionMhtDao.queryById(id);
    }

    @Override
    public Boolean repetition(QuestionMht questionMht) {
        //前端获取id
        List<QuestionMht> list = questionMhtDao.repetion(questionMht);
        if (ObjectUtil.isNotEmpty(list)) {
            Integer id = questionMht.getId();
            Integer setId = list.get(0).getId();
            if (id.equals(setId)) {
                return true;
            }
            return false;
        }
        return true;
    }


    @Override
    public Integer insert(QuestionMht questionMht) {
        if (ObjectUtil.isEmpty(questionMht.getStatus())) {
            questionMht.setStatus(0);
        }

        return questionMhtDao.insert(questionMht);
    }

    /**
     * 修改数据
     *
     * @param QuestionMht 实例对象
     * @return 实例对象
     */
    @Override
    public Integer update(QuestionMht QuestionMht) {
        if (ObjectUtil.isEmpty(QuestionMht.getStatus())) {
            QuestionMht.setStatus(0);
        }

        int update = questionMhtDao.update(QuestionMht);
        return update;
    }

    @Override
    public Page<QuestionMht> findAll(Integer page, Integer limit, QuestionMht QuestionMht) {
        PageHelper.startPage(page, limit);
        Page<com.aaa.entity.mht.QuestionMht> pageResult = questionMhtDao.getAll(QuestionMht);
        return pageResult;
    }


    @Override
    public Integer deleteByIds(Integer[] ids) {
        Integer del = questionMhtDao.deleteByIds(ids);
        return del;
    }

    @Override
    public List<QuestionMht> getDictionary() {
        return questionMhtDao.getDictionary();
    }
}

