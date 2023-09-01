package com.aaa.dao.scl;


import com.aaa.entity.scl.TestPlanScl;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TestPlanSclDao {

    List<TestPlanScl> getAll(TestPlanScl testPlanScl);

    Integer insert(TestPlanScl testPlanScl);

    Integer update(TestPlanScl testPlanScl);

    Integer delete(@Param("ids") Integer[] ids);

    List getByTestCode(String sixRandom);

    Integer queryByName(TestPlanScl testPlanScl);
}

