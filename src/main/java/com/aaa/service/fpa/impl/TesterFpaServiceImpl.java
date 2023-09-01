package com.aaa.service.fpa.impl;

import com.aaa.dao.fpa.TesterFpaDao;
import com.aaa.entity.fpa.TesterFpa;
import com.aaa.service.fpa.TesterFpaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * 性格测试者(TesterFpa)表服务实现类
 *
 * @author makejava
 * @since 2022-09-02 19:44:40
 */
@Service("testerFpaService")
public class TesterFpaServiceImpl implements TesterFpaService {
    @Autowired
    private TesterFpaDao testerFpaDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public TesterFpa queryById(Integer id) {
        return this.testerFpaDao.queryById(id);
    }


    /**
     * 新增数据
     *
     * @param testerFpa 实例对象
     * @return 实例对象
     */
    @Override
    public TesterFpa saveTesterFpa(TesterFpa testerFpa) {
        this.testerFpaDao.insert(testerFpa);
        return testerFpa;
    }

    /**
     * 修改数据
     *
     * @param testerFpa 实例对象
     * @return 实例对象
     */
    @Override
    public TesterFpa update(TesterFpa testerFpa) {
        this.testerFpaDao.update(testerFpa);
        return this.queryById(testerFpa.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.testerFpaDao.deleteById(id) > 0;
    }

    @Override
    public TesterFpa getByPhone(String phone) {
        return testerFpaDao.getTesterFpaByPhone(phone);
    }
}
