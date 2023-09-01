package com.aaa.controller;

import lombok.extern.java.Log;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/8/30 17:13
 * @description：
 * @modified By：
 * @version:
 */
@RestController
@Log
public class LogoutController extends BaseController{

    @RequestMapping("/logout.do")
    public ModelAndView logout(HttpSession session){
        log.info("注销操作");
        session.invalidate();
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/login.jsp");
        return mav;
    }
}
