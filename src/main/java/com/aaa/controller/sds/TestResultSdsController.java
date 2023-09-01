package com.aaa.controller.sds;

import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.ReturnRecords;
import com.aaa.service.sds.ResultSdsService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * @author ：Teacher陈（86521760@qq.com）
 * @date ：Created in 2022/9/5 9:08
 * @description：
 * @modified By：
 * @version:
 */
@RestController
@RequestMapping("viewTestResultSds")
public class TestResultSdsController extends BaseController {
    @Autowired
    ResultSdsService resultSdsService;

    @RequestMapping("queryColorCount.do")
    public Result colorCount(){
        Map<String, Integer> planSds = resultSdsService.queryAllPlanSds();
        return success(planSds);
    }
    @RequestMapping(value = "toReportFormsSds.do")
    public ModelAndView toResultSds(ModelAndView modelAndView){
        modelAndView.setViewName("sds/reportFormsSds");
        return modelAndView;
    }


    @RequestMapping("getReturn.do")
    public Result getReturn(@RequestParam Integer page, @RequestParam Integer limit, ReturnRecords records) {
        Page<ReturnRecords> byTesterId = resultSdsService.getReturnRecords(page, limit,  records);
        return success(byTesterId.getTotal(),byTesterId.getResult());
    }



    @RequestMapping("insertReturn.do")
    public Result saveReturn( ReturnRecords records) {
        int i = resultSdsService.saveReturn(records);
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
        int i = resultSdsService.deleteReturn(id);
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
        int i = resultSdsService.updateReturn(returnRecords);
        if (i>0) {
            return success( );
        }
        return fail();
    }
    @RequestMapping("toShowSDSReturn.do")
    public ModelAndView toShowSDSReturn(ModelAndView modelAndView){
        modelAndView.setViewName("sds/showSDSReturn");
        return modelAndView;
    }

}
