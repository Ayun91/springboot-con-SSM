package com.aaa.service.scl.impl;

import com.aaa.dao.scl.TestResultSclDao;
import com.aaa.entity.scl.TestResultScl;
import com.aaa.service.scl.TestResultSclService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (TestResultScl)表服务实现类
 *
 * @author makejava
 * @since 2022-09-02 21:14:07
 */
@Service("testResultSclService")
public class TestResultSclServiceImpl implements TestResultSclService {
    @Autowired
    private TestResultSclDao testResultSclDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public TestResultScl queryById(Integer id) {
        return this.testResultSclDao.queryById(id);
    }


    /**
     * 新增数据
     *
     * @param testResultScl 实例对象
     * @return 实例对象
     */
    @Override
    public TestResultScl insert(TestResultScl testResultScl) {
        this.testResultSclDao.insert(testResultScl);
        return testResultScl;
    }

    /**
     * 修改数据
     *
     * @param testResultScl 实例对象
     * @return 实例对象
     */
    @Override
    public TestResultScl update(TestResultScl testResultScl) {
        this.testResultSclDao.update(testResultScl);
        return this.queryById(testResultScl.getId());
    }


    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.testResultSclDao.deleteById(id) > 0;
    }

    @Override
    public int insertBatch(List<TestResultScl> entities) {
        return testResultSclDao.insertBatch(entities);
    }
}
