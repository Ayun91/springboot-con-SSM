package com.aaa.service.sds.impl;


import com.aaa.dao.sds.TblQuestionSdsDao;
import com.aaa.entity.sds.QuestionSds;
import com.aaa.entity.system.PageSortEntity;
import com.aaa.service.sds.TblQuestionSdsService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 问题表(TblQuestionSds)表服务实现类
 *
 * @author makejava
 * @since 2022-07-15 20:48:06
 */
@Service("tblQuestionSdsService")
public class TblQuestionSdsServiceImpl implements TblQuestionSdsService {
    @Autowired
    private TblQuestionSdsDao tblQuestionSdsDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public QuestionSds queryById(Integer id) {
        return this.tblQuestionSdsDao.queryById(id);
    }

    @Override
    public List<QuestionSds> queryAll(PageSortEntity pageSortEntity, QuestionSds tblQuestionSds) {
        PageHelper.startPage(pageSortEntity.getPage(), pageSortEntity.getLimit(), pageSortEntity.getOrderString());
       List<QuestionSds> allTblQuestionByCondition = tblQuestionSdsDao.findAllQuestionByCondition(tblQuestionSds);
        return allTblQuestionByCondition;
    }

    /**
     * 分页查询
     *
     * @param tblQuestionSds 筛选条件
     * @param pageRequest    分页对象
     * @return 查询结果
     */
   /* @Override
    public Page<TblQuestionSds> queryByPage(TblQuestionSds tblQuestionSds, PageRequest pageRequest) {
        long total = this.tblQuestionSdsDao.count(tblQuestionSds);
        return new PageImpl<>(this.tblQuestionSdsDao.queryAllByLimit(tblQuestionSds, pageRequest), pageRequest, total);
    }*/

    /**
     * 新增数据
     *
     * @param tblQuestionSds 实例对象
     * @return 实例对象
     */
    @Override
    public QuestionSds save(QuestionSds tblQuestionSds) {
        this.tblQuestionSdsDao.insert(tblQuestionSds);
        return tblQuestionSds;
    }

    /**
     * 修改数据
     *
     * @param tblQuestionSds 实例对象
     * @return 实例对象
     */
    @Override
    public boolean update(QuestionSds tblQuestionSds) {
        int update = this.tblQuestionSdsDao.update(tblQuestionSds);
        if (update > 0) {
            return true;
        }
        return false;
    }

    /**
     * 通过主键删除数据
     *
     * @param idList 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String idList) {
        System.out.println(idList);
        String[] split = idList.split(",");
        List<String> list = new ArrayList<String>();
        for (String s : split) {
            list.add(s);
        }
        return this.tblQuestionSdsDao.deleteById(list) > 0;
    }

    /**
     * @param TblQuestionSds
     * @return boolean
     * @create by: feng (zhaixing@163.com)
     * @description: 唯一性校验
     * @create time: 2022/7/15 17:18
     */
    @Override
    public boolean repetitionName(QuestionSds TblQuestionSds) {
        Integer integer = this.tblQuestionSdsDao.repetitionName(TblQuestionSds);
        if (integer == 0) {
            return true;
        }
        return false;
    }

    @Override
    public List<QuestionSds> findAllQuestion() {
        return tblQuestionSdsDao.findAllQuestion();
    }
}
