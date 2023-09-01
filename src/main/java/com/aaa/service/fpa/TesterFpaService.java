package com.aaa.service.fpa;

import com.aaa.entity.fpa.TesterFpa;

/**
 * 性格测试者(TesterFpa)表服务接口
 *
 * @author makejava
 * @since 2022-09-02 19:44:40
 */
public interface TesterFpaService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TesterFpa queryById(Integer id);

    /**
     * 新增数据
     *
     * @param testerFpa 实例对象
     * @return 实例对象
     */
    TesterFpa saveTesterFpa(TesterFpa testerFpa);

    /**
     * 修改数据
     *
     * @param testerFpa 实例对象
     * @return 实例对象
     */
    TesterFpa update(TesterFpa testerFpa);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    TesterFpa getByPhone(String phone);
}
