package com.aaa.service.sds.impl;

import com.aaa.dao.sds.TesterSdsDao;
import com.aaa.entity.sds.TesterSds;
import com.aaa.service.sds.TesterSdsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * 性格测试者(TesterSds)表服务实现类
 *
 * @author makejava
 * @since 2022-09-05 11:50:56
 */
@Service("testerSdsService")
public class TesterSdsServiceImpl implements TesterSdsService {
    @Autowired
    private TesterSdsDao testerSdsDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public TesterSds queryById(Integer id) {
        return this.testerSdsDao.queryById(id);
    }

    @Override
    public TesterSds queryByPhone(String phone) {
        return testerSdsDao.queryByPhone(phone);
    }

    /**
     * 分页查询
     *
     * @param testerSds 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */




    /**
     * 新增数据
     *
     * @param testerSds 实例对象
     * @return 实例对象
     */
    @Override
    public TesterSds insert(TesterSds testerSds) {
        this.testerSdsDao.insert(testerSds);
        return testerSds;
    }

    /**
     * 修改数据
     *
     * @param testerSds 实例对象
     * @return 实例对象
     */
    @Override
    public TesterSds update(TesterSds testerSds) {
        this.testerSdsDao.update(testerSds);
        return this.queryById(testerSds.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.testerSdsDao.deleteById(id) > 0;
    }
}
