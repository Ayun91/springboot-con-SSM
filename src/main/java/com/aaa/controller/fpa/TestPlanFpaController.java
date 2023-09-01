package com.aaa.controller.fpa;

import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.fpa.TestPlanFpa;
import com.aaa.service.fpa.TestPlanFpaService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/8/30 10:55
 * @description：测试计划控制层
 * @modified By：
 * @version:
 */
@RestController
@RequestMapping("/testPlanFpa")
public class TestPlanFpaController extends BaseController {
    @Autowired
    private TestPlanFpaService testPlanFpaService;

    @RequestMapping("toShowTestPlanFpa.do")
    public ModelAndView toShowTestPlanFpa() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("fpa/showTestPlanFpa");
        return mav;
    }


    @GetMapping("/getAll.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, TestPlanFpa testPlanFpa) {
       Page<TestPlanFpa> all = testPlanFpaService.getAll(page, limit, testPlanFpa);

        return success(all.getTotal(), all.getResult());
    }

    @PostMapping("/save.do")
    public Result save(TestPlanFpa testPlanFpa){
        Integer insert = testPlanFpaService.saveTestPlanFpa(testPlanFpa);
        if (insert>0){
            return success();
        }
        return fail();
    }

    @PutMapping("update.do")
    public Result update(@RequestBody TestPlanFpa testPlanFpa){
        TestPlanFpa byId = testPlanFpaService.getById(testPlanFpa.getId());
        if (byId.getTestName().equals(testPlanFpa.getTestName())){
            Integer update = testPlanFpaService.update(testPlanFpa);
            if (update>0){
                return success("更新成功");
            }
            return fail("更新失败");
        }
        if (testPlanFpaService.repetitionName(testPlanFpa.getTestName()).size()<1){
            Integer update = testPlanFpaService.update(testPlanFpa);
            if (update>0){
                return success("更新成功");
            }
            return fail("更新失败");
        }
       return fail("测试计划名称重复");
    }

    @DeleteMapping("delete.do")
    public Result delete(@RequestParam Integer[] ids){
        Integer delete = testPlanFpaService.delete(ids);
        if (delete>0){
            return success("成功删除了"+delete+"条数据");
        }
        return fail("删除失败");
    }
    @GetMapping("repetitionName.do")
    public Result repetitionName(String testName){
        List<TestPlanFpa> testPlanFpas = testPlanFpaService.repetitionName(testName);
        if (testPlanFpas.size()==0){
            return success("测试计划名称可用");
        }
        return fail("测试计划名称重复");
    }
}