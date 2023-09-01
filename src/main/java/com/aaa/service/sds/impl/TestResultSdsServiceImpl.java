package com.aaa.service.sds.impl;

import com.aaa.dao.sds.TestResultSdsDao;
import com.aaa.entity.sds.TestResultSds;
import com.aaa.service.sds.TestResultSdsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (TestResultSds)表服务实现类
 *
 * @author makejava
 * @since 2022-09-07 09:39:20
 */
@Service("testResultSdsService")
public class TestResultSdsServiceImpl implements TestResultSdsService {
    @Autowired
    private TestResultSdsDao testResultSdsDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public TestResultSds queryById(Integer id) {
        return this.testResultSdsDao.queryById(id);
    }



    /**
     * 分页查询
     *
     * @param testResultSds 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */




    /**
     * 新增数据
     *
     * @param testResultSds 实例对象
     * @return 实例对象
     */
    @Override
    public TestResultSds insert(TestResultSds testResultSds) {
        this.testResultSdsDao.insert(testResultSds);
        return testResultSds;
    }

    /**
     * 修改数据
     *
     * @param testResultSds 实例对象
     * @return 实例对象
     */
    @Override
    public TestResultSds update(TestResultSds testResultSds) {
        this.testResultSdsDao.update(testResultSds);
        return this.queryById(testResultSds.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.testResultSdsDao.deleteById(id) > 0;
    }



    @Override
    public int insertBatch(List<TestResultSds> entities) {
        return testResultSdsDao.insertBatch(entities);
    }
}
