package com.aaa.service.sas.impl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.sas.QuestionSasDao;
import com.aaa.entity.sas.QuestionSas;
import com.aaa.service.sas.QuestionSasService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 问题表(Sas)表服务实现类
 *
 * @author makejava
 * @since 2022-08-29 15:37:57
 */
@Service
public class QuestionSasServiceImpl implements QuestionSasService {
    @Autowired
    QuestionSasDao questionSasDao;


    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public QuestionSas queryById(Integer id) {
        return this.questionSasDao.queryById(id);
    }

    /**
     * 新增数据
     *
     * @param questionSas 实例对象
     * @return 实例对象
     */
    @Override
    public Integer save(QuestionSas questionSas) {
        if (ObjectUtil.isEmpty(questionSas.getStatus())){
            questionSas.setStatus(0);
        }

        return questionSasDao.insert(questionSas);
    }

    /**
     * 修改数据
     *
     * @param questionSas 实例对象
     * @return 实例对象
     */
    @Override
    public Integer update(QuestionSas questionSas) {

        if (ObjectUtil.isEmpty(questionSas.getStatus())){
            questionSas.setStatus(0);
        }

        int update = questionSasDao.update(questionSas);
        return update;
    }


    @Override
    public Page<QuestionSas> findAll(Integer page, Integer limit, QuestionSas questionSas) {
        PageHelper.startPage(page, limit);
        Page<QuestionSas> pageResult = questionSasDao.getAll(questionSas);
        return pageResult;
    }

    @Override
    public Integer deleteByIds(Integer[] ids) {
        Integer del =   questionSasDao.deleteByIds(ids);
        return del;

    }

    @Override
    public List<QuestionSas> getAllByStatus() {
        return questionSasDao.getAllByStatus();
    }

    /**
     * 题目唯一性校验
     * @param questionSas
     * @return
     */
    @Override
    public boolean repetitionName(QuestionSas questionSas) {
        List<QuestionSas> questionSasList = questionSasDao.repetitionName(questionSas);
        if (ObjectUtil.isNotEmpty(questionSasList)) {
            Integer id = questionSasList.get(0).getId();
            Integer sasId = questionSas.getId();
            if (id.equals(sasId)) {
                return true;
            }
            return false;
        }
        return true;
    }
}
