package com.aaa.controller.fpa;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.fpa.QuestionFpa;
import com.aaa.service.fpa.QuestionFpaService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 问题表(QuestionFpa)表控制层
 *
 * @author makejava
 * @since 2022-08-29 18:53:49
 */
@RestController
@RequestMapping("questionFpa")
public class QuestionFpaController extends BaseController {
    /**
     * 服务对象
     */
    @Autowired
    private QuestionFpaService questionFpaService;

    @RequestMapping("toShowQuestionFpa.do")
    public ModelAndView modelAndView() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("fpa/showQuestionFpa");
        return mav;
    }

    @RequestMapping("/getAll.do")
    @ResponseBody
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, QuestionFpa questionFpa) {
        Page<QuestionFpa> all = questionFpaService.findAll(page, limit, questionFpa);
        return success(all.getTotal(), all.getResult());
    }

    /**
     * 表单验证,根据question问题查询
     *
     * @param question
     * @return
     */
    @GetMapping("repetitionName.do")
    public Result repetitionName(String question) {
        if (ObjectUtil.isNotEmpty(question)) {
            List<QuestionFpa> questionFpas = questionFpaService.repetitionName(question);
            if (questionFpas.size() > 0) {
                return fail("问题重复");
            }
            return success("问题可用");
        }
        return fail("请输入要添加的问题");
    }

    /**
     * 新增数据
     *
     * @param questionFpa 实体
     * @return 新增结果
     */
    @PostMapping("save.do")
    public Result save(@RequestBody QuestionFpa questionFpa) {
        Integer insert = questionFpaService.saveQuestionFpa(questionFpa);
        if (insert > 0) {
            return success();
        }
        return fail();
    }

    /**
     * 编辑数据
     *
     * @param questionFpa 实体
     * @return 编辑结果
     */
    @PutMapping("updateQuestionFpa.do")
    public Result updateQuestionFpa(@RequestBody QuestionFpa questionFpa) {
        QuestionFpa byId = questionFpaService.getById(questionFpa.getId());
        if (byId.getQuestion().equals(questionFpa.getQuestion())) {
            Integer update = questionFpaService.updateQuestionFpa(questionFpa);
            if (update > 0) {
                return success();
            }
            return fail();
        }
        List<QuestionFpa> questionFpas = questionFpaService.repetitionName(questionFpa.getQuestion());
        if (questionFpas.size() < 1) {
            Integer update = questionFpaService.updateQuestionFpa(questionFpa);
            if (update > 0) {
                return success("修改成功");
            }
            return fail("修改失败");
        }
        return fail("问题重复");
    }

    /**
     * 删除数据
     *
     * @param ids
     * @return 删除是否成功
     */
    @DeleteMapping("delete.do")
    public Result deleteByIds(@RequestParam Integer[] ids) {
        Integer integer = questionFpaService.deleteByIds(ids);
        if (integer > 0) {
            return success("成功删除了" + integer + "条数据");
        }
        return fail();
    }

}

