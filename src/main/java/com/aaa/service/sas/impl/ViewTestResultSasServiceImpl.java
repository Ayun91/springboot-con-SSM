package com.aaa.service.sas.impl;


import com.aaa.dao.sas.ReturnRecordsSASDao;
import com.aaa.dao.sas.ViewTestResultSasDao;
import com.aaa.entity.ReturnRecords;
import com.aaa.entity.ViewQuestionAnswer;
import com.aaa.entity.sas.ViewTestResultSas;
import com.aaa.service.sas.ViewTestResultSasService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (ViewTestResultSas)表服务实现类
 *
 * @author makejava
 * @since 2022-09-06 09:33:52
*/
@Service
public class ViewTestResultSasServiceImpl implements ViewTestResultSasService {
    @Autowired
    private ViewTestResultSasDao viewTestResultSasDao;
    @Autowired
    ReturnRecordsSASDao returnRecordsDao;
    @Override
    public Page<ViewTestResultSas> getAll(Integer page, Integer limit, ViewTestResultSas viewTestResultSas) {
        PageHelper.startPage(page,limit);
        List<ViewTestResultSas> resultSas = viewTestResultSasDao.getAll(viewTestResultSas);
        for (ViewTestResultSas resultSa : resultSas) {
            if (resultSa.getScore() < 50) {
                resultSa.setDegree("正常");
            } else {
                resultSa.setDegree("焦虑");
            }
        }
        return (Page<ViewTestResultSas>) resultSas;
    }

    @Override
    public Integer deleteResult(Integer[] ids) {
        Integer integer1 = viewTestResultSasDao.deleteTesterSas(ids);
        Integer integer = viewTestResultSasDao.deleteResultSas(ids);
        return integer+integer1;
    }

    @Override
    public ViewTestResultSas getById(Integer testerId) {
        return viewTestResultSasDao.getById(testerId);
    }

    @Override
    public Map<String, Integer> getCountColor() {
        int normal = 0;
        int mild = 0;
        int moderate = 0;
        int severe = 0;
        List<ViewTestResultSas> viewSass = this.viewTestResultSasDao.getAll(null);
        for (ViewTestResultSas viewSas : viewSass) {
            double forward = viewSas.getForward();
            double inversion = viewSas.getInversion();
            double sum = (forward + inversion) * 1.25;
            if (sum < 50) {
                normal++;
            } else if (sum >= 50 && sum <= 59) {
                mild++;
            } else if (sum >= 60 && sum <= 69) {
                moderate++;
            } else {
                severe++;
            }
        }
        Map<String, Integer> map = new HashMap<>();
        map.put("normal", normal);
        map.put("mild", mild);
        map.put("moderate", moderate);
        map.put("severe", severe);
        return map;
    }

    @Override
    public Page<ViewQuestionAnswer> getDetailsById(Integer page,Integer limit,Integer id) {
        PageHelper.startPage(page,limit);
        return (Page<ViewQuestionAnswer>)viewTestResultSasDao.getDetailsById(id);
    }

    @Override
    public Page<ViewTestResultSas> getNormalStudent(Integer page, Integer limit, ViewTestResultSas viewTestResultSas) {
        PageHelper.startPage(page,limit);
        List<ViewTestResultSas> normalStudent = viewTestResultSasDao.getNormalStudent(viewTestResultSas);
        for (ViewTestResultSas resultSa : normalStudent) {
            if (resultSa.getScore() < 50) {
                resultSa.setDegree("正常");
            } else {
                resultSa.setDegree("焦虑");
            }
        }
        return (Page<ViewTestResultSas>)normalStudent;
    }

    @Override
    public Page<ViewTestResultSas> getAbnormalStudent(Integer page, Integer limit, ViewTestResultSas viewTestResultSas) {
        PageHelper.startPage(page,limit);
        List<ViewTestResultSas> abnormalStudent = viewTestResultSasDao.getAbnormalStudent(viewTestResultSas);

        for (ViewTestResultSas resultSa : abnormalStudent) {
            if (resultSa.getScore() < 50) {
                resultSa.setDegree("正常");
            } else {
                resultSa.setDegree("焦虑");
            }
        }
        return (Page<ViewTestResultSas>)abnormalStudent;
    }

    @Override
    public Page<ReturnRecords> getReturnRecords(Integer page, Integer limit, ReturnRecords records) {
        PageHelper.startPage(page,limit);
        return (Page<ReturnRecords>)  returnRecordsDao.getReturnRecords(records);
    }

    @Override
    public Integer saveReturn(ReturnRecords records) {
        return returnRecordsDao.insertSAS(records);
    }

    @Override
    public Integer deleteReturn(int[] id) {
        return returnRecordsDao.deleteSAS(id);
    }

    @Override
    public Integer updateReturn(ReturnRecords returnRecords) {
        return returnRecordsDao.updateSAS(returnRecords);
    }

}
