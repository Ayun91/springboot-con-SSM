package com.aaa.dao.sds;

import com.aaa.entity.ResultSds;
import com.aaa.entity.front.TesterVo;

import java.util.List;
import java.util.Map;

/**
 * @author ：范少
 * @date ：Created in 2022/9/7 14:36
 * @description：
 * @modified By：
 * @version:
 */
public interface ResultSdsDao {

    List<Map<String, Object>> queryAllSds(ResultSds resultSds);

    List<ResultSds> queryAllPlanSds();

    int deleteResultSds(List list);

    /**
     * @create by: 易寒
     * @description: 查询单个人的测试结果
     * @create time: 2022/9/6 14:47
     *  * @param null
     * @return
     */
    ResultSds queryTesterById(String id);
    /** 
     * @create by: 梦浩然
     * @description: 查询结果 
     * @create time: 2022/9/7 8:50
     *  * @param null
     * @return
     */
    ResultSds queryByPhoneAndName(TesterVo testerVo);

    /** 
    * @create by: 梦浩然
    * @description:  
    * @create time: 2022/9/9 12:13
    *  * @param null
     * @return
     */
    List<ResultSds> queryAllPlan();

    ResultSds queryById(Integer id);
}
