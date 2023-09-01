package com.aaa.service.sds;

import com.aaa.entity.sds.TestPlanSds;
import com.aaa.entity.system.PageSortEntity;

import java.util.List;

/**
 * 测试计划fpa(TestPlanSds)表服务接口
 *
 * @author makejava
 * @since 2022-09-01 20:49:38
 */
public interface TestPlanSdsService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TestPlanSds queryById(Integer id);

    /**
     * 分页查询
     *
     * @param testPlanSds 筛选条件
     * @param testPlanSds      分页对象
     * @return 查询结果
     */

    List<TestPlanSds> queryByPage(PageSortEntity pageSortEntity, TestPlanSds testPlanSds);



    /**
     * 新增数据
     *
     * @param testPlanSds 实例对象
     * @return 实例对象
     */
    TestPlanSds save(TestPlanSds testPlanSds);

    /**
     * 修改数据
     *
     * @param testPlanSds 实例对象
     * @return 实例对象
     */
    TestPlanSds update(TestPlanSds testPlanSds);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(String id);


    /**
     * @create by: childe范
     * @description: 重复性校验
     * @create time: 2022/9/2 9:35
     * @param testPlanSds
     * @return
     */

    boolean repetitionName(TestPlanSds testPlanSds);


}
