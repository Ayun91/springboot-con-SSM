package com.aaa.service.sas;

import com.aaa.entity.sas.TesterSas;

/**
 * @author ：Teacher凡
 * @date ：Created in 2022/9/5 15:18
 * @description：
 * @modified By：
 * @version:
 */
public interface TesterSasService {
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TesterSas queryById(Integer id);

    /**
     * 新增数据
     *
     * @param testerSas 实例对象
     * @return 实例对象
     */
    Integer saveTesterSas(TesterSas testerSas);

    /**
     * 修改数据
     *
     * @param testerSas 实例对象
     * @return 实例对象
     */
    TesterSas update(TesterSas testerSas);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    TesterSas getByPhone(String phone);
}
