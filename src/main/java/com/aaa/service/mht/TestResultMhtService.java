package com.aaa.service.mht;

import com.aaa.entity.mht.TestResultMht;

import java.util.List;

/**
 * (TestResultMht)表服务接口
 *
 * @author makejava
 * @since 2022-09-06 17:34:07
 */
public interface TestResultMhtService {

    TestResultMht queryById(Integer id);


    /**
     * 新增数据
     *
     * @param testResultFpa 实例对象
     * @return 实例对象
     */
    TestResultMht insert(TestResultMht testResultMht);

    /**
     * 修改数据
     *
     * @param testResultFpa 实例对象
     * @return 实例对象
     */
    TestResultMht update(TestResultMht testResultMht);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);


    int insertBatch(List<TestResultMht> entities);

}
