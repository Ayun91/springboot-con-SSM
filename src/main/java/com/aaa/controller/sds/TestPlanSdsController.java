package com.aaa.controller.sds;


import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.sds.TestPlanSds;
import com.aaa.entity.system.PageSortEntity;
import com.aaa.service.sds.TestPlanSdsService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 测试计划fpa(TestPlanSds)表控制层
 *
 * @author makejava
 * @since 2022-09-01 20:49:38
 */
@RestController
@RequestMapping("tblTestPlanSds")
public class TestPlanSdsController extends BaseController {
    /**
     * 服务对象
     */
    @Autowired
    private TestPlanSdsService testPlanSdsService;


    /**
     * 去显示所有测试计划的页面
     */
    @RequestMapping("toShowTestPlanSds.do")
    public ModelAndView toShowTestPlanSds(ModelAndView modelAndView)
    {
        modelAndView.setViewName("sds/showTestPlanSds");
        return  modelAndView;
    }


    /**
     * 分页查询
     *
     * @param testPlanSds 筛选条件
     * @param testPlanSds      分页对象
     * @return 查询结果
     */
    @RequestMapping("queryByPage.do")
    public Result queryByPage(PageSortEntity pageSortEntity, TestPlanSds testPlanSds) {
        List<TestPlanSds> planSdsList = testPlanSdsService.queryByPage(pageSortEntity, testPlanSds);
        Page page=(Page) planSdsList;
        return success(page.getResult(),page.getTotal());
    }


    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<TestPlanSds> queryById(@PathVariable("id") Integer id) {
        return ResponseEntity.ok(this.testPlanSdsService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param testPlanSds 实体
     * @return 新增结果
     */
    @PostMapping("insertPlan.do")
    public Result add(TestPlanSds testPlanSds) {
        TestPlanSds planSds = testPlanSdsService.save(testPlanSds);
        return success(planSds);
    }

    /**
     * 编辑数据
     *
     * @param testPlanSds 实体
     * @return 编辑结果
     */
    @RequestMapping("updatePlanSds.do")
    public Result edit(TestPlanSds testPlanSds) {
        TestPlanSds update = this.testPlanSdsService.update(testPlanSds);
        if (update != null) {
            return success();
        }
        return fail();
    }

    /**
     * 删除数据
     *
     * @return 删除是否成功
     */
    @RequestMapping("deletePlanSds.do")
    public Result deleteById(String idList) {
        boolean b = this.testPlanSdsService.deleteById(idList);
        if (b) {
            return success();
        }
        return fail();
    }

    /**
      * @create by: childe范
      * @description:重复性校验
      * @create time: 2022/9/2 9:31
     * @param testPlanSds
     * @return com.aaa.controller.Result
     */
    @GetMapping("repetitionName.do")
    public Result repetitionName(TestPlanSds testPlanSds ) {


        boolean b = this.testPlanSdsService.repetitionName(testPlanSds);
        if (b) {
            return success("计划名称可用");
        }
        return fail("计划名称不可用，请" +
                "重新更换");
    }

}

