package com.aaa.service.front.impl;

import com.aaa.dao.front.TestPlanDao;
import com.aaa.entity.front.TestPlan;
import com.aaa.service.front.TestPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * (TestPlan)表服务实现类
 *
 * @author makejava
 * @since 2022-09-02 19:08:29
 */
@Service("viewTestPlanService")
public class TestPlanServiceImpl implements TestPlanService {
    @Autowired
    private TestPlanDao testPlanDao;


    @Override
    public TestPlan getTestPlanByTestCode(String testCode) {
        return testPlanDao.getTestPlanByTestCode(testCode);
    }
}
