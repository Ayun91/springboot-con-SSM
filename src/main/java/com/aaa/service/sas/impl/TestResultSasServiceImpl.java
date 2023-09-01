package com.aaa.service.sas.impl;


import com.aaa.dao.sas.TestResultSasDao;
import com.aaa.entity.sas.TestResultSas;
import com.aaa.service.sas.TestResultSasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ：Teacher凡（2015347271@qq.com）
 * @date ：Created in 2022/9/5 15:20
 * @description：
 * @modified By：
 * @version:
 */
@Service("testResultSasService")
public class TestResultSasServiceImpl implements TestResultSasService {
    @Autowired
    private TestResultSasDao testResultSasDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public TestResultSas queryById(Integer id) {
        return this.testResultSasDao.queryById(id);
    }


    /**
     * 新增数据
     *
     * @param testResultSas 实例对象
     * @return 实例对象
     */
    @Override
    public TestResultSas insert(TestResultSas testResultSas) {
        this.testResultSasDao.insert(testResultSas);
        return testResultSas;
    }

    /**
     * 修改数据
     *
     * @param testResultSas 实例对象
     * @return 实例对象
     */
    @Override
    public TestResultSas update(TestResultSas testResultSas) {
        this.testResultSasDao.update(testResultSas);
        return this.queryById(testResultSas.getId());
    }


    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.testResultSasDao.deleteById(id) > 0;
    }

    @Override
    public int insertBatch(List<TestResultSas> entities) {
        return testResultSasDao.insertBatch(entities);
    }
}
