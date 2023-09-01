package com.aaa.controller.interceptor;

import cn.hutool.core.util.ObjectUtil;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Component
public class LoginInterceptor implements HandlerInterceptor {
    /**
     * controller中的方法之前执行
     * 返回true则继续执行controller中方法，
     * 返回false停止执行controller中的方法。
     *
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //如果用户未登录，拦截，并让他滚，去登录页面
        String contextPath = request.getContextPath();
        HttpSession session = request.getSession();
        //排除不需要拦截的资源
        String uri = request.getRequestURI();
        if (uri.contains("login")||uri.contains("front")||uri.contains("static")) {
            return  true;
        } else {
            Object userObj = session.getAttribute("user");
            //如果用户已经登录，放行
            if (ObjectUtil.isNotEmpty(userObj)) {
                return  true;
            } else {
                response.sendRedirect( contextPath+"/login.jsp");
                return false;
            }
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
    }
}
