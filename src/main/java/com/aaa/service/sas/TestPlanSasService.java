package com.aaa.service.sas;

import com.aaa.entity.sas.TestPlanSas;
import com.github.pagehelper.Page;


/**
 * 测试计划fpa(TblTestPlanSas)表服务接口
 *
 * @author makejava
 * @since 2022-08-30 16:12:57
 */
public interface TestPlanSasService {
    Page<TestPlanSas> getAll(Integer page, Integer limit, TestPlanSas testPlanSas);

    Integer save(TestPlanSas testPlanSas);

    Integer update(TestPlanSas testPlanSas);

    Integer delete(Integer[] ids);

    /**
     * 测试名称唯一性校验
     */
    boolean repetitionPlanName(TestPlanSas testPlanSas);

}
