package com.aaa.dao.mht;

import com.aaa.entity.mht.TestPlanMht;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 测试计划fpa(TestPlanMht)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-02 09:46:40
 */
public interface TestPlanMhtDao {


    List<TestPlanMht> getAll(TestPlanMht testPlanMht);

    Integer insert(TestPlanMht testPlanMht);

    Integer update(TestPlanMht testPlanMht);

    Integer delete(@Param("ids") Integer[] ids);

    List getByTestCode(String sixRandom);

    List<TestPlanMht> getName(TestPlanMht testPlanMht);

}

