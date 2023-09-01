package com.aaa.controller.sas;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.sas.TestPlanSas;
import com.aaa.service.sas.TestPlanSasService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * 测试计划fpa(TblTestPlanSas)表控制层
 *
 * @author makejava
 * @since 2022-08-30 16:12:57
 */
@RestController
@RequestMapping("tblTestPlanSas")
public class TestPlanSasController extends BaseController {
    @Autowired
    TestPlanSasService testPlanSasService;
    @RequestMapping("toShowTestPlanSas.do")
    public ModelAndView toShowTestPlanFpa() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("sas/showTestPlanSas");
        return mav;
    }


    @GetMapping("/getAll.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, TestPlanSas testPlanSas) {
        Page<TestPlanSas> all = testPlanSasService.getAll(page, limit, testPlanSas);
        return success(all.getTotal(),all.getResult());
    }

    @PostMapping("/save.do")
    public Result save(TestPlanSas testPlanSas){
        Integer insert = testPlanSasService.save(testPlanSas);
        if (insert>0){
            return success();
        }
        return fail();
    }

    @PutMapping("update.do")
    public Result update(@RequestBody TestPlanSas testPlanSas){
        Integer update = testPlanSasService.update(testPlanSas);
        if (update>0){
            return success();
        }
        return fail();
    }

    @DeleteMapping("delete.do")
    public Result delete(@RequestParam Integer[] ids){
        Integer delete = testPlanSasService.delete(ids);
        if (delete>0){
            return success("成功删除了"+delete+"条数据");
        }
        return fail("删除失败");
    }

    /**
     * 测试名称唯一性校验
     * @param testPlanSas
     * @return
     */
    @RequestMapping("/repetitionPlanName.do")
    public Object repetitionPlanName(TestPlanSas testPlanSas) {
        if (ObjectUtil.isNotEmpty(testPlanSas.getTestName())) {
            boolean b = testPlanSasService.repetitionPlanName(testPlanSas);
            if (b) {
                return success();
            }
            return fail("内容重复，请重新输入");
        }
        return fail("内容不能为空");
    }

}

