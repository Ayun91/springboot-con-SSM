package com.aaa.service.scl.impl;


import com.aaa.dao.scl.TestPlanSclDao;
import com.aaa.entity.scl.TestPlanScl;
import com.aaa.service.scl.TestPlanSclService;
import com.aaa.utils.MyTools;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/8/30 11:05
 * @description：
 * @modified By：
 * @version:
 */
@Service
public class TestPlanSclServiceImpl implements TestPlanSclService {
    @Autowired
    private TestPlanSclDao testPlanSclDao;

    @Override
    public Page<TestPlanScl> getAll(Integer page, Integer limit, TestPlanScl testPlanScl) {
        PageHelper.startPage(page, limit);
        return (Page<TestPlanScl>) testPlanSclDao.getAll(testPlanScl);
    }

    @Override
    public Integer saveTestPlanScl(TestPlanScl testPlanScl) {
        while (true) {
            String sixRandom = MyTools.getSixRandom();

            List testCode = testPlanSclDao.getByTestCode(sixRandom);
            if (testCode.size()==0){
                testPlanScl.setTestCode(sixRandom);
                break;
            }
        }
        return testPlanSclDao.insert(testPlanScl);
    }

    @Override
    public Integer update(TestPlanScl testPlanScl) {
        return testPlanSclDao.update(testPlanScl);
    }

    @Override
    public Integer delete(Integer[] ids) {
        return testPlanSclDao.delete(ids);
    }

    @Override
    public Integer queryByName(TestPlanScl testPlanScl) {
        return testPlanSclDao.queryByName(testPlanScl);
    }
}