package com.aaa.service.sds;

import com.aaa.entity.ResultSds;
import com.aaa.entity.ReturnRecords;
import com.aaa.entity.front.TesterVo;
import com.aaa.entity.system.PageSortEntity;
import com.github.pagehelper.Page;

import java.util.List;
import java.util.Map;

/**
 * @author ：Student范锰豪（3126145672@qq.com）
 * @date ：Created in 2022/9/7 14:52
 * @description：
 * @modified By：
 * @version:
 */
public interface ResultSdsService {
//    Page<ResultSds> queryAllSds(PageSortEntity pageSortEntity, ResultSds resultSds);
    Page<ResultSds> queryAllSds(PageSortEntity pageSortEntity, ResultSds resultSds);


    /** 
     * @create by: 梦浩然
     * @description: 删除 
     * @create time: 2022/9/7 8:49
     *  * @param null
     * @return
     */
    int deleteResultSds(List list);
    /** 
     * @create by: 梦浩然
     * @description: 报表统计 
     * @create time: 2022/9/7 8:49
     *  * @param null
     * @return
     */
    Map<String, Integer> queryAllPlanSds();
    /** 
     * @create by: 梦浩然
     * @description: 查看详情 
     * @create time: 2022/9/7 8:49
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
    int queryByPhoneAndName(TesterVo testerVo);

    List<ResultSds> queryALLPlan();

    ResultSds queryById(Integer id);


    Page<ReturnRecords> getReturnRecords(Integer page, Integer limit, ReturnRecords records);

    Integer saveReturn(ReturnRecords records);

    /**
     * 通过指定id删除回访记录的一条或多条数据
     * @param id
     * @return
     */
    Integer deleteReturn(int[] id);
    /**
     * 通过指定id修改回访记录
     * @param returnRecords
     * @return
     */
    Integer updateReturn(ReturnRecords returnRecords);
}
