package com.aaa.service.sas;

import com.aaa.entity.sas.TestResultSas;

import java.util.List;

/**
 * @author ：Teacher凡
 * @date ：Created in 2022/9/5 14:35
 * @description：
 * @modified By：
 * @version:
 */
public interface TestResultSasService {
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TestResultSas queryById(Integer id);

    /**
     * 新增数据
     *
     * @param testResultSas 实例对象
     * @return 实例对象
     */
    TestResultSas insert(TestResultSas testResultSas);

    /**
     * 修改数据
     *
     * @param testResultSas 实例对象
     * @return 实例对象
     */
    TestResultSas update(TestResultSas testResultSas);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    int insertBatch(List<TestResultSas> entities);
}
