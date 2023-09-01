package com.aaa.service.fpa;


import com.aaa.entity.fpa.TestResultFpa;

import java.util.List;

/**
 * (TestResultFpa)表服务接口
 *
 * @author makejava
 * @since 2022-09-02 21:14:07
 */
public interface TestResultFpaService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TestResultFpa queryById(Integer id);

    /**
     * 新增数据
     *
     * @param testResultFpa 实例对象
     * @return 实例对象
     */
    TestResultFpa insert(TestResultFpa testResultFpa);

    /**
     * 修改数据
     *
     * @param testResultFpa 实例对象
     * @return 实例对象
     */
    TestResultFpa update(TestResultFpa testResultFpa);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    int insertBatch(List<TestResultFpa> entities);
}
