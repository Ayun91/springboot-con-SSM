package com.aaa.service.fpa.impl;

import com.aaa.dao.fpa.TestPlanFpaDao;
import com.aaa.entity.fpa.TestPlanFpa;
import com.aaa.service.fpa.TestPlanFpaService;
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
public class TestPlanFpaServiceImpl implements TestPlanFpaService {
    @Autowired
    private TestPlanFpaDao testPlanFpaDao;

    @Override
    public Page<TestPlanFpa> getAll(Integer page, Integer limit, TestPlanFpa testPlanFpa) {
        PageHelper.startPage(page, limit);
        return (Page<TestPlanFpa>) testPlanFpaDao.getAll(testPlanFpa);
    }

    @Override
    public Integer saveTestPlanFpa(TestPlanFpa testPlanFpa) {
        while (true) {
            String sixRandom = MyTools.getSixRandom();

            List testCode = testPlanFpaDao.getByTestCode(sixRandom);
            if (testCode.size()==0){
                testPlanFpa.setTestCode(sixRandom);
                break;
            }
        }
        return testPlanFpaDao.insert(testPlanFpa);
    }

    @Override
    public Integer update(TestPlanFpa testPlanFpa) {
        return testPlanFpaDao.update(testPlanFpa);
    }

    @Override
    public Integer delete(Integer[] ids) {
        return testPlanFpaDao.delete(ids);
    }

    @Override
    public List<TestPlanFpa> repetitionName(String testName) {
        return testPlanFpaDao.repetitionName(testName);
    }

    @Override
    public TestPlanFpa getById(Integer id) {
        return testPlanFpaDao.getById(id);
    }
}
