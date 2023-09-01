package com.aaa.controller.scl;

import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.scl.TestPlanScl;
import com.aaa.service.scl.TestPlanSclService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/8/30 10:55
 * @description：测试计划控制层
 * @modified By：
 * @version:
 */
@RestController
@RequestMapping("/testPlanScl")
public class TestPlanSclController extends BaseController {
    @Autowired
    private TestPlanSclService testPlanSclService;

    /**
     * 跳转页面
     * @return
     */
    @RequestMapping("toShowTestPlanScl.do")
    public ModelAndView toShowTestPlanScl() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("scl/showTestPlanScl");
        return mav;
    }


    @RequestMapping("/getAll.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, TestPlanScl testPlanScl) {
       Page<TestPlanScl> all = testPlanSclService.getAll(page, limit, testPlanScl);

        return success(all.getTotal(), all.getResult());
    }

    @PostMapping("/save.do")
    public Result save(TestPlanScl testPlanScl){
        Integer insert = testPlanSclService.saveTestPlanScl(testPlanScl);
        if (insert>0){
            return success();
        }
        return fail();
    }

    @PutMapping("update.do")
    public Result update(@RequestBody TestPlanScl testPlanScl){
        Integer update = testPlanSclService.update(testPlanScl);
        if (update>0){
            return success();
        }
        return fail();
    }

    @DeleteMapping("delete.do")
    public Result delete(@RequestParam Integer[] ids){
        Integer delete = testPlanSclService.delete(ids);
        if (delete>0){
            return success("成功删除了"+delete+"条数据");
        }
        return fail("删除失败");
    }

    /** 
     * @create by:
     * @description:  名称重复校验
     * @create time: 2022/9/7 15:54
     *  * @param testPlan
     * @return com.aaa.entity.Result
     */
    @RequestMapping(value = "/repetitionName.do")
    public Result repetitionName(TestPlanScl testPlanScl){
        Integer integer = testPlanSclService.queryByName(testPlanScl);
        if (integer >0){
            return fail("测试计划已存在，请更改!");
        }else {
            return success("测试计划可用");
        }
    }
}
