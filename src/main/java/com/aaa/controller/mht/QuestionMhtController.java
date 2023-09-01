package com.aaa.controller.mht;


import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.mht.QuestionMht;
import com.aaa.entity.system.Userinfo;
import com.aaa.service.mht.QuestionMhtService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;


/**
 * 心理健康诊断测验(QuestionMht)表控制层
 *
 * @author makejava
 * @since 2022-09-01 09:40:41
 */
@RestController
@RequestMapping("questionMht")
public class QuestionMhtController extends BaseController {
    /**
     * 服务对象
     */
    @Autowired
    private QuestionMhtService questionMhtService;

    @RequestMapping("toShowQuestionMht.do")
    public ModelAndView modelAndView(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("mht/showQuestionMht");
        return mav;
    }

    @RequestMapping("/getAll.do")
    @ResponseBody
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, QuestionMht questionMht) {
        Page<QuestionMht> all = questionMhtService.findAll(page, limit, questionMht);

        return success(all.getTotal(),all.getResult());
    }


    /**
     * 查询题目类型
     * @return
     */
    @RequestMapping("getDictionary.do")
    public Result getDictionary(){
        List<QuestionMht> typeList = questionMhtService.getDictionary();
        System.out.println(typeList);
        if(ObjectUtil.isNotEmpty(typeList)){
            return success(typeList);
        }
        return fail();
    }


    @PostMapping("save.do")
    public Result save(@RequestBody QuestionMht questionMht, HttpSession session) {
        Userinfo user = (Userinfo) session.getAttribute("user");
        String username = user.getUsername();
        questionMht.setCreateBy(username);
        Integer insert = questionMhtService.insert(questionMht);
        if (insert>0){
            return success();
        }
        return fail();
    }


    @PutMapping("update.do")
    public Result edit(@RequestBody QuestionMht questionMht) {

        Integer update = questionMhtService.update(questionMht);
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
    @DeleteMapping("delete.do")
    public Result deleteByIds(@RequestParam Integer[] ids) {
        Integer integer = questionMhtService.deleteByIds(ids);
        if (integer>0){
            return success("成功删除了"+integer+"条数据");
        }
        return fail();
    }
    @GetMapping("repetition.do")
    public Result repetitionByname(QuestionMht questionMht)
    {
        Boolean repetition = questionMhtService.repetition(questionMht);
        if (repetition){
            return success("");
        }
        return fail("");
    }


}

