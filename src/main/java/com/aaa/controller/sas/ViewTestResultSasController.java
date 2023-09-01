package com.aaa.controller.sas;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.ReturnRecords;
import com.aaa.entity.ViewQuestionAnswer;
import com.aaa.entity.sas.ViewTestResultSas;
import com.aaa.service.sas.ViewTestResultSasService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * @author ：Teacher凡（2015347271@qq.com）
 * @date ：Created in 2022/9/6 8:41
 * @description：
 * @modified By：
 * @version:
 */
@RestController
@RequestMapping("viewTestResultSas")
public class ViewTestResultSasController extends BaseController {

    @Autowired
    private ViewTestResultSasService viewTestResultSasService;

    @RequestMapping("toShowTestResultSas.do")
    public ModelAndView toShowViewResultFpa(ModelAndView modelAndView){
        modelAndView.setViewName("sas/showViewResultSas");
        return modelAndView;
    }
    @RequestMapping("toReportFormsSas.do")
    public ModelAndView toReportFormsFpa(ModelAndView modelAndView){
        modelAndView.setViewName("sas/reportFormsSas");
        return modelAndView;
    }

    @GetMapping("/getAll.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, ViewTestResultSas viewTestResultSas, Integer studentType){
        if (studentType != null) {
            if (studentType == 1) {
                Page<ViewTestResultSas> all = (Page<ViewTestResultSas>) viewTestResultSasService.getAll(page,limit,viewTestResultSas);
                return success(all.getTotal(),all.getResult());
            } else if (studentType == 2) {
                Page<ViewTestResultSas> normalStudent = viewTestResultSasService.getNormalStudent(page, limit, viewTestResultSas);
                return success(normalStudent.getTotal(),normalStudent.getResult());
            } else if (studentType == 3) {
                Page<ViewTestResultSas> abnormalStudent = viewTestResultSasService.getAbnormalStudent(page, limit, viewTestResultSas);
                return success(abnormalStudent.getTotal(),abnormalStudent.getResult());
            }
        }
        Page<ViewTestResultSas> all = (Page<ViewTestResultSas>) viewTestResultSasService.getAll(page,limit,viewTestResultSas);
        return success(all.getTotal(),all.getResult());
    }
    @DeleteMapping("deleteResultSas.do")
    public Result deleteResult(@RequestParam Integer[] ids){
        Integer integer = viewTestResultSasService.deleteResult(ids);
        if (integer>0){
            return success("删除成功");
        }
        return fail();
    }

    @GetMapping("getCountColor.do")
    public Result getCountColor(){
        Map<String, Integer> countColor = viewTestResultSasService.getCountColor();
        if (ObjectUtil.isNotEmpty(countColor)){
            return success(countColor);
        }
        return fail();
    }
    @GetMapping("getResultById.do")
    public Result getResultById(Integer testerId){
        ViewTestResultSas resultSas = viewTestResultSasService.getById(testerId);
        if (ObjectUtil.isNotEmpty(resultSas)){
            return success(resultSas);
        }
        return fail();
    }

    @RequestMapping("/queryDetails.do")
    public Object queryDetails(@RequestParam Integer page, @RequestParam Integer limit, Integer id) {
        Page<ViewQuestionAnswer> detailsById = viewTestResultSasService.getDetailsById(page, limit, id);
        return success(detailsById.getTotal(),detailsById.getResult());
    }



    @RequestMapping("getReturn.do")
    public Result getReturn(@RequestParam Integer page, @RequestParam Integer limit, ReturnRecords records) {
        Page<ReturnRecords> byTesterId = viewTestResultSasService.getReturnRecords(page, limit,  records);
        return success(byTesterId.getTotal(),byTesterId.getResult());
    }



    @RequestMapping("insertReturn.do")
    public Result saveReturn(ReturnRecords records) {
        int i = viewTestResultSasService.saveReturn(records);
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
        int i = viewTestResultSasService.deleteReturn(id);
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
        int i = viewTestResultSasService.updateReturn(returnRecords);
        if (i>0) {
            return success( );
        }
        return fail();
    }
    @RequestMapping("toShowSASReturn.do")
    public ModelAndView toShowSASReturn(ModelAndView modelAndView){
        modelAndView.setViewName("sas/showSASReturn");
        return modelAndView;
    }


}
