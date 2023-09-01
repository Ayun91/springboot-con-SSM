package com.aaa.service.mht.impl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.mht.TestPlanMhtDao;
import com.aaa.entity.mht.TestPlanMht;
import com.aaa.service.mht.TestPlanMhtService;
import com.aaa.utils.MyTools;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 测试计划fpa(TestPlanMht)表服务实现类
 *
 * @author makejava
 * @since 2022-09-02 09:46:44
 */
@Service
public class TestPlanMhtServiceImpl implements TestPlanMhtService {
    @Autowired
    private TestPlanMhtDao testPlanMhtDao;


    @Override
    public Page<TestPlanMht> getAll(Integer page, Integer limit, TestPlanMht testPlanMht) {
        PageHelper.startPage(page,limit);

        return (Page<TestPlanMht>)testPlanMhtDao.getAll(testPlanMht);
    }

    @Override
    public Integer saveTestPlanMht(TestPlanMht testPlanMht) {
        while (true)
        {
            String sixRandom= MyTools.getSixRandom();
            List testcode=testPlanMhtDao.getByTestCode(sixRandom);
            if (testcode.size()==0)
            {
                testPlanMht.setTestCode(sixRandom);
                break;
            }

        }
        return testPlanMhtDao.insert(testPlanMht);
    }

    @Override
    public Integer update(TestPlanMht testPlanMht) {
        return testPlanMhtDao.update(testPlanMht);
    }

    @Override
    public Integer delete(Integer[] ids) {
        return testPlanMhtDao.delete(ids);
    }

    @Override
    public Boolean getName(TestPlanMht testPlanMht) {
        List<TestPlanMht> list = testPlanMhtDao.getName(testPlanMht);
        //前端获取id
        if (ObjectUtil.isNotEmpty(list)) {
            Integer id = testPlanMht.getId();
            Integer setId = list.get(0).getId();
            if (id.equals(setId)) {
                return true;
            }
            return false;
        }
        return true;
    }
}
