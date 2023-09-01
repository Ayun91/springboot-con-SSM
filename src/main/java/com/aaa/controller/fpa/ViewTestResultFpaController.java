package com.aaa.controller.fpa;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.fpa.ResultDiv;
import com.aaa.entity.fpa.ViewTestResultFpa;
import com.aaa.service.fpa.ViewTestResultFpaService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/5 16:11
 * @description：
 * @modified By：
 * @version:
 */
@RestController
@RequestMapping("viewTestResultFpa")
public class ViewTestResultFpaController extends BaseController {

    @Autowired
    private ViewTestResultFpaService viewTestResultFpaService;

    @RequestMapping("toShowTestResultFpa.do")
    public ModelAndView toShowViewResultFpa(ModelAndView modelAndView){
        modelAndView.setViewName("fpa/showViewResultFpa");
        return modelAndView;
    }
    @RequestMapping("toReportFormsFpa.do")
    public ModelAndView toReportFormsFpa(ModelAndView modelAndView){
        modelAndView.setViewName("fpa/reportFormsFpa");
        return modelAndView;
    }

    @GetMapping("getAll.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, ViewTestResultFpa viewTestResultFpa){
        Page<ViewTestResultFpa> all = (Page<ViewTestResultFpa>) viewTestResultFpaService.getAll(page,limit,viewTestResultFpa);
        return success(all.getTotal(),all.getResult());
    }
    @DeleteMapping("deleteResult.do")
    public Result deleteResult(@RequestParam Integer[] ids){
        Integer integer = viewTestResultFpaService.deleteResult(ids);
        if (integer>0){
            return success("删除成功");
        }
        return fail();
    }

    @GetMapping("getCountColor.do")
    public Result getCountColor(){
        Map<String, Integer> personality = viewTestResultFpaService.getColor();
        if (ObjectUtil.isNotEmpty(personality)){
            return success(personality);
        }
        return fail();
    }
    @GetMapping("getResultById.do")
    public Result getResultById(Integer testerId){
        ViewTestResultFpa resultFpa = viewTestResultFpaService.getById(testerId);
        if (ObjectUtil.isNotEmpty(resultFpa)){
            return success(resultFpa);
        }
        return fail();
    }
    @PostMapping("div.do")
    public Result resultDiv(Integer id){
        ResultDiv resultDiv = viewTestResultFpaService.getResultDiv(id);
        return success(resultDiv);
    }
}
