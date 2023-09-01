package com.aaa.controller.mht;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.ReturnRecords;
import com.aaa.entity.mht.ViewTestResultMht;
import com.aaa.service.mht.ViewTestResultMhtService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * (ViewTestResultMht)表控制层
 *
 * @author makejava
 * @since 2022-09-07 16:29:31
 */
@RestController
@RequestMapping("viewsTestResultMht")
public class ViewTestResultMhtController extends BaseController {
    /**
     * 服务对象
     */
    @Autowired
    private ViewTestResultMhtService viewTestResultMhtService;

    @RequestMapping("toShowTestResultMht.do")
    public ModelAndView toShowViewResultFpa(ModelAndView modelAndView) {
        modelAndView.setViewName("/mht/showViewResultMht");
        return modelAndView;
    }

    @RequestMapping("toReportFormsMht.do")
    public ModelAndView toReportFormsFpa(ModelAndView modelAndView) {
        modelAndView.setViewName("/mht/reportFormsMht");
        return modelAndView;
    }

    /**
     * 查询所有
     *
     * @param page              当前页
     * @param limit             每页多少行
     * @param studentType       学生类型（1 所有学生，2 问题学生，3 正常学生）
     * @param viewTestResultMht 条件查询
     * @return 统一返回类
     */
    @GetMapping("getAll.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, Integer studentType, ViewTestResultMht viewTestResultMht) {
        if (studentType != null) {
            if (studentType == 1) {
                Page<ViewTestResultMht> all = viewTestResultMhtService.getAll(page, limit, viewTestResultMht);
                return success(all.getTotal(), all.getResult());
            } else if (studentType == 2) {
                Page<ViewTestResultMht> normalStudent = viewTestResultMhtService.getNormalStudent(page, limit, viewTestResultMht);
                return success(normalStudent.getTotal(),normalStudent.getResult());
            } else if (studentType == 3) {
                Page<ViewTestResultMht> abnormalStudent = viewTestResultMhtService.getAbnormalStudent(page, limit, viewTestResultMht);
                return success(abnormalStudent.getTotal(),abnormalStudent.getResult());
            } else if (studentType == 4){
                Page<ViewTestResultMht> invalidStudent = viewTestResultMhtService.getInvalidStudent(page,limit,viewTestResultMht);
                return success(invalidStudent.getTotal(),invalidStudent.getResult());
            }
        }
        Page<ViewTestResultMht> all = viewTestResultMhtService.getAll(page, limit, viewTestResultMht);
        return success(all.getTotal(), all.getResult());
    }

    @DeleteMapping("deleteResult.do")
    public Result deleteResult(@RequestParam Integer[] ids) {
        Integer integer = viewTestResultMhtService.deleteResult(ids);
        if (integer > 0) {
            return success("删除成功");
        }
        return fail();
    }

    @GetMapping("getPersonality.do")
    public Result getCountColor() {
        List<Map<String, Object>> countColor = viewTestResultMhtService.getPersonality();
        if (ObjectUtil.isNotEmpty(countColor)) {
            return success(countColor);
        }
        return fail();
    }

    @RequestMapping("getQuestionMHT.do")
    public Result getQuestionMHT(@RequestParam Integer page, @RequestParam Integer limit, Integer testerId) {
        Page<Map<String, Object>> byTesterId = viewTestResultMhtService.getByTesterId(page, limit, testerId);
        if (ObjectUtil.isNotEmpty(byTesterId)) {
            return success(byTesterId.getTotal(), byTesterId.getResult());
        }
        return fail();
    }

    @RequestMapping("getPlanId.do")
    public Result getPlanId() {
        List<Map<String, Integer>> planId = viewTestResultMhtService.getPlanId();
        if (ObjectUtil.isNotEmpty(planId)) {
            return success(planId);
        }
        return fail();
    }

    @GetMapping("getReport.do")
    public Result getReport(Integer testerId) {
        ViewTestResultMht byId = viewTestResultMhtService.getById(testerId);
        if (ObjectUtil.isNotEmpty(byId)) {
            return success(byId);
        }
        return fail();
    }

    @RequestMapping("getReturn.do")
    public Result getReturn(@RequestParam Integer page, @RequestParam Integer limit, ReturnRecords records) {
        Page<ReturnRecords> byTesterId = viewTestResultMhtService.getReturnRecords(page, limit,  records);
        return success(byTesterId.getTotal(),byTesterId.getResult());
    }



    @RequestMapping("insertReturn.do")
    public Result saveReturn( ReturnRecords records) {
        int i = viewTestResultMhtService.saveReturn(records);
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
    public Result delete( int[] id) {
        int i = viewTestResultMhtService.deleteReturn(id);
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
        int i = viewTestResultMhtService.updateReturn(returnRecords);
        if (i>0) {
            return success( );
        }
        return fail();
    }
    @RequestMapping("toShowMHTReturn.do")
    public ModelAndView toShowMHTReturn(ModelAndView modelAndView){
        modelAndView.setViewName("mht/showMHTReturn");
        return modelAndView;
    }




}

