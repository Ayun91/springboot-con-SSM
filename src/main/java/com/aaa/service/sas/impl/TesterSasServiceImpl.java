package com.aaa.service.sas.impl;


import com.aaa.dao.sas.TesterSasDao;
import com.aaa.entity.sas.TesterSas;
import com.aaa.service.sas.TesterSasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author ：Teacher凡（2015347271@qq.com）
 * @date ：Created in 2022/9/5 15:23
 * @description：
 * @modified By：
 * @version:
 */
@Service
public class TesterSasServiceImpl  implements TesterSasService {
    @Autowired
    private TesterSasDao testerSasDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public TesterSas queryById(Integer id) {
        return this.testerSasDao.queryById(id);
    }


    /**
     * 新增数据
     *
     * @param testerSas 实例对象
     * @return 实例对象
     */
    @Override
    public Integer saveTesterSas(TesterSas testerSas) {
        return this.testerSasDao.insert(testerSas);
    }

    /**
     * 修改数据
     *
     * @param testerSas 实例对象
     * @return 实例对象
     */
    @Override
    public TesterSas update(TesterSas testerSas) {
        this.testerSasDao.update(testerSas);
        return this.queryById(testerSas.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.testerSasDao.deleteById(id) > 0;
    }

    @Override
    public TesterSas getByPhone(String phone) {
        return testerSasDao.getTesterFpaByPhone(phone);
    }
}
