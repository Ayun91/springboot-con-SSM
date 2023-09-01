package com.aaa.controller.sds;

import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.ResultSds;
import com.aaa.entity.sds.QuestionAnswerSds;
import com.aaa.entity.system.PageSortEntity;
import com.aaa.service.sds.QuestionAnswerSdsService;
import com.aaa.service.sds.ResultSdsService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


@RestController
@RequestMapping("viewTestResultSds")
public class ResultSdsController extends BaseController {
    @Autowired
    ResultSdsService resultSdsService;
    @Autowired
    QuestionAnswerSdsService questionAnswerSdsService;
    @RequestMapping(value = "queryAllResultSds.do")
    public Result queryAllPlan(PageSortEntity pageSortEntity, ResultSds resultSds) {
        Page<ResultSds> testPlanPage = resultSdsService.queryAllSds(pageSortEntity, resultSds);
        return success(testPlanPage.getResult(), testPlanPage.getTotal());
    }

    /** 
     * @create by: 梦浩然
     * @description:  测试结果删除
     * @create time: 2022/9/6 10:28
     *  * @param testerId
     * @return com.aaa.entity.Result
     */
    @RequestMapping(value = "deleteResultSds.do")
    public Result deleteResultSds(String testerId){
        String[] split = testerId.split(",");
        List list = new ArrayList();
        for (String s : split) {
            list.add(s);
        }
        int i = resultSdsService.deleteResultSds(list);
        if (i > 0) {
            return success("删除成功");
        }else {
            return fail("删除失败");
        }
    }


    /** 
     * @create by: 梦浩然
     * @description:  查看详情
     * @create time: 2022/9/6 10:24
     *  * @param id
     * @return com.aaa.entity.Result
     */
    @RequestMapping("queryResultById.do")
    public Result queryResultById(String id){
        ResultSds resultSds = resultSdsService.queryTesterById(id);
        return success(resultSds);
    }

    /**
     * @return
     * @create by: 易寒
     * @description: 查询测试计划ID
     * @create time: 2022/9/8 14:27
     * * @param null
     */
    @RequestMapping(value = "queryTestPlanId.do")
    public Result queryTestPlanId(){
        List<ResultSds> resultSds = resultSdsService.queryALLPlan();
        System.out.println(resultSds.toString());
        return success(resultSds);
    }

    @RequestMapping(value = "queryResults.do")
    public Result queryTestPlanId(PageSortEntity pageSortEntity, String id) {
        Page<QuestionAnswerSds> resultSds = questionAnswerSdsService.queryById(pageSortEntity, id);
        System.out.println(resultSds.toString());
        return success(resultSds.getResult(), resultSds.getTotal());
    }

    @RequestMapping(value = "toShowTestResultSds.do")
    public ModelAndView toPlanSds(ModelAndView modelAndView) {
        modelAndView.setViewName("sds/resultFormsSds");
        return modelAndView;
    }


}

