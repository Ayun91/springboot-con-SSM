package com.aaa.controller.log;

import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.log.Logger;
import com.aaa.service.log.LogService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/3 10:35
 * @description：日志控制层
 * @modified By：
 * @version: 1
 */
@RestController
@RequestMapping("log")
public class LogController extends BaseController {

    @Autowired
    private LogService logService;

    @RequestMapping("toShowLog.do")
    public ModelAndView toShowLog(ModelAndView modelAndView){
        modelAndView.setViewName("log/showLog");
        return modelAndView;
    }

    @RequestMapping("/getAllLog.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, Logger logger) {
        Page<Logger> all = logService.getAll(page, limit, logger);
        return success(all.getTotal(),all.getResult());
    }
}