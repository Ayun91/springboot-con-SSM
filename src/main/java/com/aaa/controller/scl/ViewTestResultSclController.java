package com.aaa.controller.scl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.ReturnRecords;
import com.aaa.entity.scl.QuestionAnswerScl;
import com.aaa.entity.scl.ViewTestResultScl;
import com.aaa.entity.system.PageSortEntity;
import com.aaa.service.scl.QuestionAnswerSclService;
import com.aaa.service.scl.ViewTestResultSclService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/5 16:11
 * @description：
 * @modified By：
 * @version:
 */
@RestController
@RequestMapping("viewTestResultScl")
public class ViewTestResultSclController extends BaseController {

    @Autowired
    private ViewTestResultSclService viewTestResultSclService;

    @Autowired
    private QuestionAnswerSclService questionAnswerSclService;
    @RequestMapping("toShowTestResultScl.do")
    public ModelAndView toShowViewResultScl(ModelAndView modelAndView){
        modelAndView.setViewName("scl/showViewResultScl");
        return modelAndView;
    }

    @RequestMapping("toShowReportFormScl.do")
    public ModelAndView toReportFormsScl(ModelAndView modelAndView){
        modelAndView.setViewName("scl/reportFormScl");
        return modelAndView;
    }

    @GetMapping("getAll.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, ViewTestResultScl viewTestResultScl){
        System.out.println(viewTestResultScl.toString());
        Page<ViewTestResultScl> all = (Page<ViewTestResultScl>) viewTestResultSclService.getAll(page,limit,viewTestResultScl);
        return success(all.getTotal(),all.getResult());
    }
    @GetMapping("getAllScl.do")
    public Result getAllScl(){
        Map<String, Integer> allScl = viewTestResultSclService.getAllScl();
        return success(allScl);
    }
    @DeleteMapping("deleteResult.do")
    public Result deleteResult(@RequestParam Integer[] ids){
        Integer integer = viewTestResultSclService.deleteResult(ids);
        if (integer>0){
            return success("删除成功");
        }
        return fail();
    }

    @GetMapping("getFrontResults.do")
    public Result getResultById(Integer testerId){
        System.out.println(testerId);
        System.out.println(testerId);
        System.out.println(testerId);
        System.out.println(testerId);
        System.out.println(testerId);
        ViewTestResultScl resultScl = viewTestResultSclService.getById(testerId);
        System.out.println(resultScl);
        if (ObjectUtil.isNotEmpty(resultScl)){
            return success(resultScl);
        }
        return fail();
    }

    @RequestMapping("queryResult.do")
    public Result queryResult(PageSortEntity pageSortEntity, String id){
        Page<QuestionAnswerScl> questionAnswerScls = questionAnswerSclService.queryById(pageSortEntity,id);
        return success(questionAnswerScls.getResult(),questionAnswerScls.getTotal());
    }

    /**
     * @create by: 易寒
     * @description: 查询测试计划ID
     * @create time: 2022/9/8 14:27
     *  * @param null
     * @return
     */
    @RequestMapping(value = "queryTestPlanId.do")
    public Result queryTestPlanId(){
        List<ViewTestResultScl> resultScl = viewTestResultSclService.queryALLPlan();
        return success(resultScl);
    }


    @RequestMapping("getReturn.do")
    public Result getReturn(@RequestParam Integer page, @RequestParam Integer limit, ReturnRecords records) {
        Page<ReturnRecords> byTesterId = viewTestResultSclService.getReturnRecords(page, limit,  records);
        return success(byTesterId.getTotal(),byTesterId.getResult());
    }



    @RequestMapping("insertReturn.do")
    public Result saveReturn(ReturnRecords records) {
        int i = viewTestResultSclService.saveReturn(records);
        if (i>0) {
            return success( );
        }
        return fail();
    }

    /**
     * 通过id删除回访记录的一条或多条数据
     * @param id
     * @return
     */
    @RequestMapping("deleteReturn.do")
    public Result delete(int[] id) {
        int i = viewTestResultSclService.deleteReturn(id);
        if (i>0) {
            return success( );
        }
        return fail();
    }
    /**
     * 通过id修改回访记录
     * @param returnRecords
     * @return
     */
    @RequestMapping("updateReturn.do")
    public Result updateReturn(ReturnRecords returnRecords ) {
        int i = viewTestResultSclService.updateReturn(returnRecords);
        if (i>0) {
            return success( );
        }
        return fail();
    }
    @RequestMapping("toShowSCLReturn.do")
    public ModelAndView toShowSCLReturn(ModelAndView modelAndView){
        modelAndView.setViewName("scl/showSCLReturn");
        return modelAndView;
    }


}
