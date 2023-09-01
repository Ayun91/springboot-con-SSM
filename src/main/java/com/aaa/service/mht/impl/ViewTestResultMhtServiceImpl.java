package com.aaa.service.mht.impl;

import com.aaa.dao.mht.ReturnRecordsMHTDao;
import com.aaa.dao.mht.ViewTestResultMhtDao;
import com.aaa.entity.ReturnRecords;
import com.aaa.entity.mht.ViewTestResultMht;
import com.aaa.service.mht.ViewTestResultMhtService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * (ViewTestResultMht)表服务实现类
 *
 * @author makejava
 * @since 2022-09-07 16:29:35
 */
@Service("viewTestResultMhtService")
public class ViewTestResultMhtServiceImpl implements ViewTestResultMhtService {

    @Autowired
    ViewTestResultMhtDao viewTestResultMhtDao;

    @Autowired
    ReturnRecordsMHTDao returnRecordsDao;
    @Override
    public Page<ViewTestResultMht> getAll(Integer page, Integer limit, ViewTestResultMht viewTestResultMht) {
        PageHelper.startPage(page,limit);
        return (Page<ViewTestResultMht>)  viewTestResultMhtDao.getAll(viewTestResultMht);
    }

    @Override
    public Integer deleteResult(Integer[] ids) {
        viewTestResultMhtDao.deleteTesterMht(ids);
        return viewTestResultMhtDao.deleteResultMht(ids);
    }

    @Override
    public ViewTestResultMht getById(Integer testerId) {
        return viewTestResultMhtDao.getById(testerId);
    }


    @Override
    public List<Map<String, Object>> getPersonality() {
        return viewTestResultMhtDao.getPersonality();
    }



    @Override
    public Page<Map<String,Object >> getByTesterId(Integer page,Integer limit, Integer testerId) {
        PageHelper.startPage(page,limit);
        return (Page<Map<String,Object>>) viewTestResultMhtDao.getByTesterId(testerId);
    }

    @Override
    public List<Map<String,Integer>> getPlanId() {
        return viewTestResultMhtDao.getPlanId();
    }

    @Override
    public Page<ViewTestResultMht> getNormalStudent(Integer page, Integer limit, ViewTestResultMht viewTestResultMht) {
        PageHelper.startPage(page,limit);
        return (Page<ViewTestResultMht>) viewTestResultMhtDao.getNormalStudent(viewTestResultMht);
    }

    @Override
    public Page<ViewTestResultMht> getAbnormalStudent(Integer page, Integer limit, ViewTestResultMht viewTestResultMht) {
        PageHelper.startPage(page,limit);
        return (Page<ViewTestResultMht>)  viewTestResultMhtDao.getAbnormalStudent(viewTestResultMht);
    }

    @Override
    public Page<ReturnRecords> getReturnRecords(Integer page, Integer limit, ReturnRecords records) {
        PageHelper.startPage(page,limit);
        return (Page<ReturnRecords>)  returnRecordsDao.getReturnRecords(records);
    }

    @Override
    public Integer saveReturn(ReturnRecords records) {
        return returnRecordsDao.insertMHT(records);
    }

    @Override
    public Integer deleteReturn(int[] id) {
        return returnRecordsDao.deleteMHT(id);
    }

    @Override
    public Integer updateReturn(ReturnRecords returnRecords) {
        return returnRecordsDao.updateMHT(returnRecords);
    }

    @Override
    public Page<ViewTestResultMht> getInvalidStudent(Integer page, Integer limit, ViewTestResultMht viewTestResultMht) {
        PageHelper.startPage(page,limit);
        return (Page<ViewTestResultMht>)  viewTestResultMhtDao.getInvalidStudent(viewTestResultMht);
    }
}
