package com.aaa.controller.sds;


import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.sds.QuestionSds;
import com.aaa.entity.system.PageSortEntity;
import com.aaa.service.sds.TblQuestionSdsService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 问题表(TblQuestionSds)表控制层
 *
 * @author makejava
 * @since 2022-07-15 20:48:06
 */
@RestController
@RequestMapping("/questionSds")
public class TblQuestionSdsController extends BaseController {

    /**
     * 服务对象
     */
    @Autowired
    private TblQuestionSdsService tblQuestionSdsService;

    @RequestMapping("toShowQuestionSds.do")
    public ModelAndView toShowQuestionSds(ModelAndView modelAndView) {
        modelAndView.setViewName("sds/showQuestionSds");
        return modelAndView;
    }

    /**
     * 分页查询
     *
     * @param tblQuestionSds 筛选条件
     * @param pageSortEntity 分页对象
     * @return pageSortEntity 查询结果
     */
    @GetMapping("allQuestionSds.do")
    //   @RequestMapping("allQuestionSds.do")
    public Result queryByPage(PageSortEntity pageSortEntity, QuestionSds tblQuestionSds) {
        List<QuestionSds> tblQuestionSdsList = tblQuestionSdsService.queryAll(pageSortEntity, tblQuestionSds);
        Page page = (Page) tblQuestionSdsList;
        return success(page.getResult(), page.getTotal());
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<QuestionSds> queryById(@PathVariable("id") Integer id) {
        return ResponseEntity.ok(this.tblQuestionSdsService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param tblQuestionSds 实体
     * @return 新增结果
     */
    @PostMapping("insertSds.do")

    public Result add(QuestionSds tblQuestionSds) {
        QuestionSds tblQuestionSdsEntity = this.tblQuestionSdsService.save(tblQuestionSds);
       return success(tblQuestionSdsEntity);
    }

    /**
     * 编辑数据
     *
     * @param tblQuestionSds 实体
     * @return 编辑结果
     */
    @RequestMapping("updateSds.do")
    public Result updateSds(QuestionSds tblQuestionSds) {
        boolean update = this.tblQuestionSdsService.update(tblQuestionSds);
        if (update) {
            return success("修改成功");
        }
        return success("修改失败");
    }

    /**
     * 删除数据
     *
     * @param idList 主键
     * @return 删除是否成功
     */
    @RequestMapping("deleteSds.do")
    public Result deleteById(String idList) {
        System.out.println(idList);
        boolean b = this.tblQuestionSdsService.deleteById(idList);
        if (b) {
            return success();
        }
        return fail();
    }



    /**
     * @param "QuestionFpa"
     * @return MyReturn
     * @create by: feng (zhaixing@163.com)
     * @description: 题目唯一性校验
     * @create time: 2022/7/14 17:00
     */
    @GetMapping("repetitionName.do")
    public Result repetitionName(QuestionSds TblQuestionSds) {
        boolean b = this.tblQuestionSdsService.repetitionName(TblQuestionSds);
        if (b) {
            return success("您的问题可用");
        }
        return fail("您的问题不可用,请重新更换");
    }

}

