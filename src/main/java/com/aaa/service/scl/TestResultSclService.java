package com.aaa.service.scl;


import com.aaa.entity.scl.TestResultScl;

import java.util.List;

/**
 * (TestResultScl)表服务接口
 *
 * @author makejava
 * @since 2022-09-02 21:14:07
 */
public interface TestResultSclService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TestResultScl queryById(Integer id);

    /**
     * 新增数据
     *
     * @param testResultScl 实例对象
     * @return 实例对象
     */
    TestResultScl insert(TestResultScl testResultScl);

    /**
     * 修改数据
     *
     * @param testResultScl 实例对象
     * @return 实例对象
     */
    TestResultScl update(TestResultScl testResultScl);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    int insertBatch(List<TestResultScl> entities);
}
