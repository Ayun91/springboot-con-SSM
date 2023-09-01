package com.aaa.service.sds.impl;

import com.aaa.dao.sds.ResultSdsDao;
import com.aaa.dao.sds.ReturnRecordsSDSDao;
import com.aaa.entity.ResultSds;
import com.aaa.entity.ReturnRecords;
import com.aaa.entity.front.TesterVo;
import com.aaa.entity.system.PageSortEntity;
import com.aaa.service.sds.ResultSdsService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ：Student范锰豪（3126145672@qq.com）
 * @date ：Created in 2022/9/7 14:55
 * @description：
 * @modified By：
 * @version:
 */
@Service
public class ResultSdsServiceImpl implements ResultSdsService {
    @Autowired
    ResultSdsDao resultSdsDao;

    @Autowired
    ReturnRecordsSDSDao returnRecordsDao;
    @Override
    public Page<ResultSds> queryAllSds(PageSortEntity pageSortEntity, ResultSds resultSds) {
        //分页加排序
        PageHelper.startPage(pageSortEntity.getPage(), pageSortEntity.getLimit(),pageSortEntity.getOrderString());
        List<Map<String, Object>> mapList = resultSdsDao.queryAllSds(resultSds);
        Page<ResultSds> page = (Page) mapList;
        return page;
    }

    @Override
    public Map<String, Integer> queryAllPlanSds() {
        List<ResultSds> resultSds = resultSdsDao.queryAllPlanSds();
        int n = 0, mi = 0, mo = 0, s = 0;
        for (ResultSds resultSd : resultSds) {
            int forward = Integer.parseInt(resultSd.getForward());
            int inversion = Integer.parseInt(resultSd.getInversion());
            int sum = (int) ((forward + inversion) * 1.25);
            if (sum < 53) {
                n++;
            } else if (sum >= 53 && sum <= 62) {
                mi++;
            }else if (sum >= 63 && sum<= 72){
                mo++;
            }else if(sum >=73){
                s++;
            }
        }
        Map<String, Integer> resultMap = new HashMap<String, Integer>();
        resultMap.put("n", n);
        resultMap.put("s", s);
        resultMap.put("mo", mo);
        resultMap.put("mi", mi);
        return resultMap;
    }

    @Override
    public int deleteResultSds(List list) {
        return resultSdsDao.deleteResultSds(list);
    }

    @Override
    public ResultSds queryTesterById(String id) {
        return resultSdsDao.queryTesterById(id);
    }

    /** 
     * @create by: 梦浩然
     * @description: 查询个人答题结果 
     * @create time: 2022/9/7 16:27
     *  * @param null
     * @return
     */
    @Override
    public int queryByPhoneAndName(TesterVo testerVo) {
        ResultSds resultSds = resultSdsDao.queryByPhoneAndName(testerVo);
        int type = 0;
        int forward = Integer.parseInt(resultSds.getForward());
        int inversion = Integer.parseInt(resultSds.getInversion());
        int sum = (int) ((forward + inversion) * 1.25);
        if (sum < 53) {
            type = 1;
        } else if (sum >= 53 && sum <= 62) {
            type = 2;
        }else if (sum >= 63 && sum<= 72){
            type = 3;
        }else if(sum >=73){
            type = 4;
        }
        return type;
    }

    @Override
    public List<ResultSds> queryALLPlan() {
        List<ResultSds> resultSds = resultSdsDao.queryAllPlan();
        System.out.println(resultSds);
        return resultSds;
    }

    @Override
    public ResultSds queryById(Integer id) {
        return resultSdsDao.queryById(id);
    }
    @Override
    public Page<ReturnRecords> getReturnRecords(Integer page, Integer limit, ReturnRecords records) {
        PageHelper.startPage(page,limit);
        return (Page<ReturnRecords>)  returnRecordsDao.getReturnRecords(records);
    }

    @Override
    public Integer saveReturn(ReturnRecords records) {
        return returnRecordsDao.insertSDS(records);
    }

    @Override
    public Integer deleteReturn(int[] id) {
        return returnRecordsDao.deleteSDS(id);
    }

    @Override
    public Integer updateReturn(ReturnRecords returnRecords) {
        return returnRecordsDao.updateSDS(returnRecords);
    }

}
