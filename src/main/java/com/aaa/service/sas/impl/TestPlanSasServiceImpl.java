package com.aaa.service.sas.impl;


import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.sas.TestPlanSasDao;
import com.aaa.entity.sas.TestPlanSas;
import com.aaa.service.sas.TestPlanSasService;
import com.aaa.utils.MyTools;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 测试计划fpa(TblTestPlanSas)表服务实现类
 *
 * @author makejava
 * @since 2022-08-30 16:12:57
 */
@Service
public class TestPlanSasServiceImpl implements TestPlanSasService {

    @Autowired
    TestPlanSasDao testPlanSasDao;
    @Override
    public Page<TestPlanSas> getAll(Integer page, Integer limit, TestPlanSas testPlanSas) {
        PageHelper.startPage(page, limit);
        return (Page<TestPlanSas>) testPlanSasDao.getAll(testPlanSas);
    }

    @Override
    public Integer save(TestPlanSas testPlanSas) {
        while (true) {
            String sixRandom = MyTools.getSixRandom();
            List testCode = testPlanSasDao.getByTestCode(sixRandom);
            if (testCode.size()==0){
                testPlanSas.setTestCode(sixRandom);
                break;
            }
        }
        return testPlanSasDao.insert(testPlanSas);
    }

    @Override
    public Integer update(TestPlanSas testPlanSas) {
        return testPlanSasDao.update(testPlanSas);
    }

    @Override
    public Integer delete(Integer[] ids) {
        return testPlanSasDao.delete(ids);
    }

    /**
     * 测试名称唯一性校验
     * @param testPlanSas
     * @return
     */
    @Override
    public boolean repetitionPlanName(TestPlanSas testPlanSas) {
        List<TestPlanSas> testPlanSasList = testPlanSasDao.repetitionPlanName(testPlanSas);
        if (ObjectUtil.isNotEmpty(testPlanSasList)) {
            Integer id = testPlanSasList.get(0).getId();
            Integer planSasId = testPlanSas.getId();
            if (id.equals(planSasId)) {
                return true;
            }
            return false;
        }
        return true;
    }
}

