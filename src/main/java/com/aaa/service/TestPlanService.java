package com.aaa.service;


import com.aaa.entity.front.TestPlan;

/**
 * (TestPlan)表服务接口
 *
 * @author makejava
 * @since 2022-09-06 09:31:50
 */
public interface TestPlanService {

    /**
     * 通过ID查询单条数据
     *
     * @param
     * @return 实例对象
     */
    TestPlan queryByTestCode(String testCode);


}
