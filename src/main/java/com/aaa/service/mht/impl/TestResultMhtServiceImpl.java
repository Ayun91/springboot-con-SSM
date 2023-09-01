package com.aaa.service.mht.impl;

import com.aaa.dao.mht.TestResultMhtDao;
import com.aaa.entity.mht.TestResultMht;
import com.aaa.service.mht.TestResultMhtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (TestResultMht)表服务实现类
 *
 * @author makejava
 * @since 2022-09-06 17:34:08
 */
@Service("testResultMhtService")
public class TestResultMhtServiceImpl implements TestResultMhtService {
    @Autowired
    private TestResultMhtDao testResultMhtDao;

  
    @Override
    public TestResultMht queryById(Integer id) {
        return this.testResultMhtDao.queryById(id);
    }


    /**
     * 新增数据
     *
     * @param TestResultMht 实例对象
     * @return 实例对象
     */
    @Override
    public TestResultMht insert(TestResultMht testResultMht) {
        this.testResultMhtDao.insert(testResultMht);
        return testResultMht;
    }

    /**
     * 修改数据
     *
     * @param TestResultMht 实例对象
     * @return 实例对象
     */
    @Override
    public TestResultMht update(TestResultMht testResultMht) {
        this.testResultMhtDao.update(testResultMht);
        return this.queryById(testResultMht.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.testResultMhtDao.deleteById(id) > 0;
    }

    @Override
    public int insertBatch(List<TestResultMht> entities) {
        return testResultMhtDao.insertBatch(entities);
    }
    
}
