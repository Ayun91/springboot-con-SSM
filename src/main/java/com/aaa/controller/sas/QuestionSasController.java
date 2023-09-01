package com.aaa.controller.sas;


import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.sas.QuestionSas;
import com.aaa.service.sas.QuestionSasService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * 问题表(Sas)表控制层
 *
 * @author makejava
 * @since 2022-08-29 15:37:57
 */
@RestController
@RequestMapping("questionSas")
public class QuestionSasController extends BaseController {
    @Autowired
    QuestionSasService questionSasService;
    /**
     * 服务对象
     */
    @RequestMapping("toShowQuestionSas.do")
    public ModelAndView modelAndView(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("sas/showQuestionSas");
        return mav;
    }
    @RequestMapping("/getAll.do")
    @ResponseBody
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, QuestionSas questionSas) {
        Page<QuestionSas> all = questionSasService.findAll(page, limit, questionSas);
        return success(all.getTotal(),all.getResult());
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<QuestionSas> queryById(@PathVariable("id") Integer id) {
        return ResponseEntity.ok(this.questionSasService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param questionSas 实体
     * @return 新增结果
     */
    @PostMapping("save.do")
    public Result save(@RequestBody QuestionSas questionSas ) {
        Integer insert = questionSasService.save(questionSas);
        if (insert>0){
            return success();
        }
        return fail();
    }

    /**
     * 编辑数据
     *
     * @param questionSas 实体
     * @return 编辑结果
     */
    @PutMapping("update.do")
    public Result edit(@RequestBody QuestionSas questionSas) {
        Integer update = questionSasService.update(questionSas);
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
        Integer integer = questionSasService.deleteByIds(ids);
        if (integer>0){
            return success("成功删除了"+integer+"条数据");
        }
        return fail();
    }

    /**
     * 题目唯一性校验
     * @param questionSas
     * @return
     */
    @RequestMapping("/repetitionName.do")
    public Object repetitionName(QuestionSas questionSas) {
        if (ObjectUtil.isNotEmpty(questionSas.getQuestion())) {
            boolean b = questionSasService.repetitionName(questionSas);
            if (b) {
                return success();
            }
            return fail("内容重复，请重新输入");
        }
        return fail("内容不能为空");
    }
}

