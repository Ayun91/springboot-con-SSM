package com.aaa.controller.mht;

import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.mht.TestPlanMht;
import com.aaa.service.mht.TestPlanMhtService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * 测试计划fpa(TestPlanMht)表控制层
 *
 * @author makejava
 * @since 2022-09-02 09:46:40
 */
@RestController
@RequestMapping("testPlanMht")
public class TestPlanMhtController extends BaseController {
    /**
     * 服务对象
     */
 @Autowired
    private TestPlanMhtService testPlanMhtService;
    @RequestMapping("toShowTestPlanMht.do")
    public ModelAndView modelAndView(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("mht/showTestPlanMht");
        return mav;
    }
    @GetMapping("/getAll.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, TestPlanMht testPlanMht) {
        Page<TestPlanMht> all = testPlanMhtService.getAll(page, limit, testPlanMht);

        return success(all.getTotal(), all.getResult());
    }

    @GetMapping("/save.do")
    public Result save(TestPlanMht testPlanMht){
        Integer insert = testPlanMhtService.saveTestPlanMht(testPlanMht);
        if (insert>0){
            return success();
        }
        return fail();
    }

    @PutMapping("update.do")
    public Result update(@RequestBody TestPlanMht testPlanMht){
        Integer update = testPlanMhtService.update(testPlanMht);
        if (update>0){
            return success();
        }
        return fail();
    }

    @DeleteMapping("delete.do")
    public Result delete(@RequestParam Integer[] ids){
        Integer delete = testPlanMhtService.delete(ids);
        if (delete>0){
            return success("成功删除了"+delete+"条数据");
        }
        return fail("删除失败");
    }

    /**
     * 验证添加计划名称是否存在
     * @param testPlanMht
     * @return
     */
    @GetMapping("getName.do")
    public Result getName(TestPlanMht testPlanMht){
        System.out.println(testPlanMht);
        Boolean b = testPlanMhtService.getName(testPlanMht);
        if (b){
            return success();
        }
        return fail();
    }

}

