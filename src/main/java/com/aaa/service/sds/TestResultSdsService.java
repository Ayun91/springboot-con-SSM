package com.aaa.service.sds;

import com.aaa.entity.sds.TestResultSds;

import java.util.List;

/**
 * (TestResultSds)表服务接口
 *
 * @author makejava
 * @since 2022-09-07 09:39:20
 */
public interface TestResultSdsService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TestResultSds queryById(Integer id);



    /**
     * 分页查询
     *
     * @param testResultSds 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */


    /**
     * 新增数据
     *
     * @param testResultSds 实例对象
     * @return 实例对象
     */
    TestResultSds insert(TestResultSds testResultSds);

    /**
     * 修改数据
     *
     * @param testResultSds 实例对象
     * @return 实例对象
     */
    TestResultSds update(TestResultSds testResultSds);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);



    int insertBatch(List<TestResultSds> entities);

}
