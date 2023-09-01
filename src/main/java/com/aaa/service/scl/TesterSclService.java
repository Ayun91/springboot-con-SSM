package com.aaa.service.scl;

import com.aaa.entity.scl.TesterScl;

/**
 * 性格测试者(TesterScl)表服务接口
 *
 * @author makejava
 * @since 2022-09-02 19:44:40
 */
public interface TesterSclService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TesterScl queryById(Integer id);

    /**
     * 新增数据
     *
     * @param testerScl 实例对象
     * @return 实例对象
     */
    TesterScl insert(TesterScl testerScl);

    /**
     * 修改数据
     *
     * @param testerScl 实例对象
     * @return 实例对象
     */
    TesterScl update(TesterScl testerScl);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    TesterScl getByPhone(String phone);
}
