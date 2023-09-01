package com.aaa.dao.front;

import com.aaa.entity.front.TestPlan;

/**
 * (TestPlan)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-02 19:08:29
 */
public interface TestPlanDao {

    TestPlan getTestPlanByTestCode(String testCode);

}

