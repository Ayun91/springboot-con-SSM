package com.aaa.service.fpa.impl;

import com.aaa.dao.fpa.TestResultFpaDao;
import com.aaa.entity.fpa.TestResultFpa;
import com.aaa.service.fpa.TestResultFpaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (TestResultFpa)表服务实现类
 *
 * @author makejava
 * @since 2022-09-02 21:14:07
 */
@Service("testResultFpaService")
public class TestResultFpaServiceImpl implements TestResultFpaService {
    @Autowired
    private TestResultFpaDao testResultFpaDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public TestResultFpa queryById(Integer id) {
        return this.testResultFpaDao.queryById(id);
    }


    /**
     * 新增数据
     *
     * @param testResultFpa 实例对象
     * @return 实例对象
     */
    @Override
    public TestResultFpa insert(TestResultFpa testResultFpa) {
        this.testResultFpaDao.insert(testResultFpa);
        return testResultFpa;
    }

    /**
     * 修改数据
     *
     * @param testResultFpa 实例对象
     * @return 实例对象
     */
    @Override
    public TestResultFpa update(TestResultFpa testResultFpa) {
        this.testResultFpaDao.update(testResultFpa);
        return this.queryById(testResultFpa.getId());
    }


    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.testResultFpaDao.deleteById(id) > 0;
    }

    @Override
    public int insertBatch(List<TestResultFpa> entities) {
        return testResultFpaDao.insertBatch(entities);
    }
}
