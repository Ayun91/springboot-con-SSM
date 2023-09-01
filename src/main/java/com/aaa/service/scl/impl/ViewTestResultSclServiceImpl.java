package com.aaa.service.scl.impl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.scl.ReturnRecordsSCLDao;
import com.aaa.dao.scl.ViewTestResultSclDao;
import com.aaa.entity.ReturnRecords;
import com.aaa.entity.scl.ViewTestResultScl;
import com.aaa.service.scl.ViewTestResultSclService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/5 15:20
 * @description：
 * @modified By：
 * @version:
 */
@Service
public class ViewTestResultSclServiceImpl implements ViewTestResultSclService {
    @Autowired
    private ViewTestResultSclDao viewTestResultSclDao;

    @Autowired
    ReturnRecordsSCLDao returnRecordsDao;
    @Override
    public Page<ViewTestResultScl> getAll(Integer page, Integer limit, ViewTestResultScl viewTestResultScl) {
        Double body = viewTestResultScl.getBody();
        if (ObjectUtil.isNotEmpty(body)){
            if (body==2){
                PageHelper.startPage(page,limit);
                return (Page<ViewTestResultScl>)viewTestResultSclDao.getAllException(viewTestResultScl);
            }
        }
        PageHelper.startPage(page,limit);
        return (Page<ViewTestResultScl>)viewTestResultSclDao.getAll(viewTestResultScl);
    }

    @Override
    public Integer deleteResult(Integer[] ids) {
        Integer integer1 = viewTestResultSclDao.deleteTesterScl(ids);
        Integer integer = viewTestResultSclDao.deleteResultScl(ids);
        return integer+integer1;
    }

    @Override
    public ViewTestResultScl getById(Integer testerId) {
        return viewTestResultSclDao.getById(testerId);
    }

    @Override
    public Map<String, Integer> getAllScl() {
        List<ViewTestResultScl> resultSclList = viewTestResultSclDao.getAll(null);
        int a = 0, b = 0 ,c = 0, d = 0, e = 0, f = 0, g = 0, h = 0, i = 0, j = 0;
        for (ViewTestResultScl viewTestResultScl : resultSclList) {
            double a1 = viewTestResultScl.getBody();
            double b1 = viewTestResultScl.getForce();
            double c1 = viewTestResultScl.getInterpersonal();
            double d1 = viewTestResultScl.getDepressed();
            double e1 = viewTestResultScl.getAnxious();
            double f1 = viewTestResultScl.getHostility();
            double g1 = viewTestResultScl.getTerror();
            double h1 = viewTestResultScl.getParanoia();
            double i1 = viewTestResultScl.getPsychotic();
            double j1 = viewTestResultScl.getSleepDiet();
            if (a1 > 2.43) {
                a++;
            }
            if (b1 > 3.27) {
                b++;
            }
            if (c1 > 3.46) {
                c++;
            }
            if (d1 > 3.13) {
                d++;
            }
            if (e1 > 2.82) {
                e++;
            }
            if (f1 > 3.13) {
                f++;
            }
            if (g1 > 2.52) {
                g++;
            }
            if (h1 > 3.23) {
                h++;
            }
            if (i1 > 2.71) {
                i++;
            }
            if (j1 > 2.33) {
                j++;
            }
        }
        Map<String, Integer> map = new HashMap<>();
        map.put("a", a);
        map.put("b", b);
        map.put("c", c);
        map.put("d", d);
        map.put("e", e);
        map.put("f", f);
        map.put("g", g);
        map.put("h", h);
        map.put("i", i);
        map.put("j", j);
        map.put("sum",resultSclList.size());
        return map;
    }

    @Override
    public List<ViewTestResultScl> queryALLPlan() {
        return viewTestResultSclDao.queryALLPlan();
    }

    @Override
    public Page<ReturnRecords> getReturnRecords(Integer page, Integer limit, ReturnRecords records) {
        PageHelper.startPage(page,limit);
        return (Page<ReturnRecords>)  returnRecordsDao.getReturnRecords(records);
    }

    @Override
    public Integer saveReturn(ReturnRecords records) {
        return returnRecordsDao.insertSCL(records);
    }

    @Override
    public Integer deleteReturn(int[] id) {
        return returnRecordsDao.deleteSCL(id);
    }

    @Override
    public Integer updateReturn(ReturnRecords returnRecords) {
        return returnRecordsDao.updateSCL(returnRecords);
    }

}
