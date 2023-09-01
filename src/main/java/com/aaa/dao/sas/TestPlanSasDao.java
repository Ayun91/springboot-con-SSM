package com.aaa.dao.sas;


import com.aaa.entity.sas.TestPlanSas;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 测试计划fpa(TblTestPlanSas)表数据库访问层
 *
 * @author makejava
 * @since 2022-08-30 16:12:57
 */
@Repository
public interface TestPlanSasDao {
    List<TestPlanSas> getAll(TestPlanSas testPlanSas);

    Integer insert(TestPlanSas testPlanSas);

    Integer update(TestPlanSas testPlanSas);

    Integer delete(@Param("ids") Integer[] ids);

    List getByTestCode(String sixRandom);

    /**
     * 测试名称唯一性校验
     */
    List<TestPlanSas> repetitionPlanName(TestPlanSas testPlanSas);
}

