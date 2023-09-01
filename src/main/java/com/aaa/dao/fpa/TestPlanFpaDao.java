package com.aaa.dao.fpa;

import com.aaa.entity.fpa.TestPlanFpa;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TestPlanFpaDao {

    List<TestPlanFpa> getAll(TestPlanFpa testPlanFpa);

    Integer insert(TestPlanFpa testPlanFpa);

    Integer update(TestPlanFpa testPlanFpa);

    Integer delete(@Param("ids") Integer[] ids);

    List getByTestCode(String sixRandom);

    List<TestPlanFpa> repetitionName(String testName);

    TestPlanFpa getById(Integer id);
}

