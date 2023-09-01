package com.aaa.service.front;

import com.aaa.entity.front.TestPlan;

/**
 * (TestPlan)表服务接口
 *
 * @author makejava
 * @since 2022-09-02 19:08:29
 */
public interface TestPlanService {


    TestPlan getTestPlanByTestCode(String testCode);
}
