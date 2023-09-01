package com.aaa.service.scl.impl;

import com.aaa.dao.scl.TesterSclDao;
import com.aaa.entity.scl.TesterScl;
import com.aaa.service.scl.TesterSclService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * 性格测试者(TesterScl)表服务实现类
 *
 * @author makejava
 * @since 2022-09-02 19:44:40
 */
@Service("testerSclService")
public class TesterSclServiceImpl implements TesterSclService {
    @Autowired
    private TesterSclDao testerSclDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public TesterScl queryById(Integer id) {
        return this.testerSclDao.queryById(id);
    }


    /**
     * 新增数据
     *
     * @param testerScl 实例对象
     * @return 实例对象
     */
    @Override
    public TesterScl insert(TesterScl testerScl) {
        this.testerSclDao.insert(testerScl);
        return testerScl;
    }

    /**
     * 修改数据
     *
     * @param testerScl 实例对象
     * @return 实例对象
     */
    @Override
    public TesterScl update(TesterScl testerScl) {
        this.testerSclDao.update(testerScl);
        return this.queryById(testerScl.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.testerSclDao.deleteById(id) > 0;
    }

    @Override
    public TesterScl getByPhone(String phone) {
        return testerSclDao.getTesterSclByPhone(phone);
    }
}
