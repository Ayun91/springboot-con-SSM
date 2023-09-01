package com.aaa.service.scl;

import com.aaa.entity.scl.TestPlanScl;
import com.github.pagehelper.Page;

public interface TestPlanSclService {

    Page<TestPlanScl> getAll(Integer page, Integer limit, TestPlanScl testPlanScl);

    Integer saveTestPlanScl(TestPlanScl testPlanScl);

    Integer update(TestPlanScl testPlanScl);

    Integer delete(Integer[] ids);

    Integer queryByName(TestPlanScl testPlanScl);
}
