package com.aaa.service.impl;

import com.aaa.dao.front.TestPlanDao;
import com.aaa.entity.front.TestPlan;
import com.aaa.service.TestPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * (TestPlan)表服务实现类
 *
 * @author makejava
 * @since 2022-09-06 09:31:50
 */
@Service("testPlanService")
public class TestPlanServiceImpl implements TestPlanService {
    @Autowired
    private TestPlanDao testPlanDao;

    @Override
    public TestPlan queryByTestCode(String testCode) {
        return testPlanDao.getTestPlanByTestCode(testCode) ;
    }

    /**
     * 通过ID查询单条数据
     *
     * @param
     * @return 实例对象
     */



}
