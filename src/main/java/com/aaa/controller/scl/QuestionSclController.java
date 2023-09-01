package com.aaa.controller.scl;

import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.scl.QuestionScl;
import com.aaa.service.scl.QuestionSclService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/2 14:42
 * @description：
 * @modified By：
 * @version:
 */
@RestController
@RequestMapping("/questionScl")
public class QuestionSclController extends BaseController {

    @Autowired
    private QuestionSclService questionSclService;

    /**
     * 跳转页面
     * @param modelAndView 模型和视图
     * @return modelAndView
     */
    @RequestMapping("/toShowQuestionScl.do")
    public ModelAndView toShowQuestionScl(ModelAndView modelAndView){
        modelAndView.setViewName("/scl/showQuestionScl");
        return modelAndView;
    }

    @GetMapping("/getAll.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit , QuestionScl questionScl){
        System.out.println(questionScl.toString());
        Page<QuestionScl> all = questionSclService.getAll(page, limit, questionScl);
        return success(all.getTotal(),all.getResult());
    }

    @PostMapping("saveQuestionScl.do")
    public Result saveQuestionScl(@RequestBody QuestionScl questionScl){
        Integer integer = questionSclService.saveQuestionScl(questionScl);
        if (integer>0){
            return success("添加成功");
        }
        return fail("添加失败");
    }


    /**
     * 编辑数据
     *
     * @param questionScl 实体
     * @return 编辑结果
     */
    @PutMapping("updateQuestionScl.do")
    public Result edit(@RequestBody QuestionScl questionScl) {

        Integer update = questionSclService.updateQuestionScl(questionScl);
        if (update>0){
            return success();
        }
        return fail();
    }


    /**
     * 删除数据
     *
     * @param ids
     * @return 删除是否成功
     */
    @DeleteMapping("deleteQuestionScl.do")
    public Result deleteByIds(@RequestParam Integer[] ids) {
        Integer integer = questionSclService.deleteQuestionScl(ids);
        if (integer>0){
            return success("成功删除了"+integer+"条数据");
        }
        return fail();
    }

    /** 
     * @create by: 梦浩然
     * @description:  重复性校验
     * @create time: 2022/9/9 16:12
     *  * @param scl
     * @return com.aaa.controller.Result
     */
    @RequestMapping(value = "/questionName.do")
    public Result sclQuesName(QuestionScl questionScl){
        Integer integer = questionSclService.querySclQuesName(questionScl);
        if (integer >0){
            return fail("题目已存在，请更改!");
        }else {
            return success("题目可用");
        }
    }
}
