package com.aaa.controller.aspect;

import com.aaa.entity.log.Logger;
import com.aaa.entity.system.Userinfo;
import com.aaa.service.log.LogService;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.java.Log;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.Date;

@Component
@Aspect
@EnableAspectJAutoProxy
@Log
public class WriterLog {
    @Autowired
    private LogService logService;

    //定义切点* com.aaa.service.*..save*(..))
    @Pointcut("execution(* com.aaa.controller.*..save*(..)) || execution(* com.aaa.controller.*..update*(..)) || execution(* com.aaa.controller.*..del*(..))")
    public void aopWebLog() {
    }

    //使用环绕通知
    @Around("aopWebLog()")
    public Object myLogger(ProceedingJoinPoint pjp) throws Throwable {
        HttpServletRequest request = null;
        if (RequestContextHolder.getRequestAttributes() != null) {
            //使用ServletRequestAttributes请求上下文获取方法更多
            ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            request = attributes.getRequest();
        }
        HttpSession session = request.getSession();
        Userinfo user = (Userinfo) session.getAttribute("user");
        String className = pjp.getSignature().getDeclaringTypeName();
        String methodName = pjp.getSignature().getName();
        //使用数组来获取参数
        Object[] args = pjp.getArgs();
        String paramString = Arrays.toString(args);
        ObjectMapper mapper = new ObjectMapper();
        //执行程序
        Object obj = pjp.proceed(args);
        //执行方法后封装日志
        Logger logger = new Logger();
        logger.setClassName(className);
        logger.setMethodName(methodName);
        logger.setCreateTime(new Date());
        logger.setParams(paramString);
        logger.setIp(request.getRemoteAddr().equals("0:0:0:0:0:0:0:1") ? "127.0.0.1" : request.getRemoteAddr());
        logger.setLoginName(user.getUsername());
        logger.setUserName(user.getUsername());
        logger.setResult(mapper.writeValueAsString(obj));
        logService.insertLog(logger);
        return obj;
    }
}
