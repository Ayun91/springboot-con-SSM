package com.aaa.service.sds.impl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.sds.TestPlanSdsDao;
import com.aaa.entity.sds.TestPlanSds;
import com.aaa.entity.system.PageSortEntity;
import com.aaa.service.sds.TestPlanSdsService;
import com.aaa.utils.MyTools;
import com.github.pagehelper.PageHelper;
import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 测试计划fpa(TestPlanSds)表服务实现类
 *
 * @author makejava
 * @since 2022-09-01 20:49:38
 */
@Service("testPlanSdsService")
@Log
public class TestPlanSdsServiceImpl implements TestPlanSdsService {
    @Autowired
    private TestPlanSdsDao testPlanSdsDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public TestPlanSds queryById(Integer id) {
        return this.testPlanSdsDao.queryById(id);
    }



    /**
     * 分页查询
     *
     * @param testPlanSds 筛选条件
     * @param testPlanSds      分页对象
     * @return 查询结果
     */


    @Override
    public List<TestPlanSds> queryByPage(PageSortEntity pageSortEntity, TestPlanSds testPlanSds) {
        PageHelper.startPage(pageSortEntity.getPage(), pageSortEntity.getLimit(), pageSortEntity.getOrderString());
        return testPlanSdsDao.queryByAll(testPlanSds);
    }




    /**
     * 新增数据
     *
     * @param testPlanSds 实例对象
     * @return 实例对象
     */
    @Override
    public TestPlanSds save(TestPlanSds testPlanSds) {

        while (true)
        {
            TestPlanSds testPlanSdsNew =new TestPlanSds();
            //此处，生成不重复的随机数，不足6位前补零
            String sixRandom = MyTools.getSixRandom();
            testPlanSdsNew.setTestCode(sixRandom);
            //判断是否跟数据库已经存在的邀请码重复
            List<TestPlanSds> testPlanSdsList = testPlanSdsDao.queryByAllView(testPlanSdsNew);
            log.info("生成的随机数，跟数据库是否一致校验"+sixRandom);
            if (ObjectUtil.isEmpty(testPlanSdsList)|| testPlanSdsList.isEmpty())
            {
                //推出循环之前，将合法的随机数保存到实体对象中testPlanSds
                testPlanSds.setTestCode(sixRandom);
                break;
            }
        }
        this.testPlanSdsDao.insert(testPlanSds);
        return testPlanSds;
    }

    /**
     * 修改数据
     *
     * @param testPlanSds 实例对象
     * @return 实例对象
     */
    @Override
    public TestPlanSds update(TestPlanSds testPlanSds) {
        int update = this.testPlanSdsDao.update(testPlanSds);
        return this.queryById(testPlanSds.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String id) {
        String[] split = id.split(",");
        List<String> list = new ArrayList<String>();
        for (String s : split) {
            list.add(s);
        }
        int i = this.testPlanSdsDao.deleteById(list);
        if (i>0){
            return true;
        }
        return  false;
    }

    @Override
    public boolean repetitionName(TestPlanSds testPlanSds) {

        Integer integer = testPlanSdsDao.repetitionName(testPlanSds);
        return integer <= 0;
    }

}
