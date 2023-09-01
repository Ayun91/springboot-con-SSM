package com.aaa.service.fpa;

import com.aaa.entity.fpa.TestPlanFpa;
import com.github.pagehelper.Page;

import java.util.List;

public interface TestPlanFpaService {

    Page<TestPlanFpa> getAll(Integer page, Integer limit, TestPlanFpa testPlanFpa);

    Integer saveTestPlanFpa(TestPlanFpa testPlanFpa);

    Integer update(TestPlanFpa testPlanFpa);

    Integer delete(Integer[] ids);

    List<TestPlanFpa> repetitionName(String testName);

    TestPlanFpa getById(Integer id);
}
