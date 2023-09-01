package com.aaa.service.mht;

import com.aaa.entity.mht.TestPlanMht;
import com.github.pagehelper.Page;

/**
 * 测试计划fpa(TestPlanMht)表服务接口
 *
 * @author makejava
 * @since 2022-09-02 09:46:44
 */
public interface TestPlanMhtService {

    Page<TestPlanMht> getAll(Integer page, Integer limit, TestPlanMht testPlanMht);

    Integer saveTestPlanMht(TestPlanMht testPlanMht);

    Integer update(TestPlanMht testPlanMht);

    Integer delete(Integer[] ids);

    Boolean getName(TestPlanMht testPlanMht);

}
