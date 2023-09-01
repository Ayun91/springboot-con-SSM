package com.aaa.service.sds;

import com.aaa.entity.sds.TesterSds;

/**
 * 性格测试者(TesterSds)表服务接口
 *
 * @author makejava
 * @since 2022-09-05 11:50:56
 */
public interface TesterSdsService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    TesterSds queryById(Integer id);

    TesterSds queryByPhone(String phone);


    /**
     * 新增数据
     *
     * @param testerSds 实例对象
     * @return 实例对象
     */
    TesterSds insert(TesterSds testerSds);

    /**
     * 修改数据
     *
     * @param testerSds 实例对象
     * @return 实例对象
     */
    TesterSds update(TesterSds testerSds);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}
