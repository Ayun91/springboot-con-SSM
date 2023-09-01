package com.aaa.aspect;

import cn.hutool.core.util.ReflectUtil;
import com.aaa.entity.system.Userinfo;
import lombok.extern.java.Log;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/1 8:25
 * @description：
 * @modified By：
 * @version:
 */
@Component
@Aspect
@Log
public class MyAspect {
    @Pointcut("execution(* com.aaa.service.*..save*(..))")
    private void save() {}

    @Pointcut("execution(* com.aaa.service.*..update*(..))")
    private void update(){}


    @Around("update()")
    public Object updateMethod(ProceedingJoinPoint pjp) throws Throwable {
        String name = pjp.getSignature().getName();
        Object[] args = pjp.getArgs();
        if (args != null && args.length >= 1) {
            //保存方法
            ReflectUtil.invoke(args[0],"setUpdateTime",new Date());
            try {
                //测试者登录会进入日志,但是数据库没有createBy列,会报错
                RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
                if(requestAttributes != null&&requestAttributes.resolveReference(RequestAttributes.REFERENCE_SESSION)!=null){
                    HttpSession session = (HttpSession) requestAttributes.resolveReference(RequestAttributes.REFERENCE_SESSION);
                    Userinfo userInfo= (Userinfo) session.getAttribute("user");
                    //测试者登录会进入日志,但是数据库没有createBy列,会报错
                    ReflectUtil.invoke(args[0],"setUpdateBy", userInfo.getUsername());
                }
            } catch (Exception e) {
                log.info(name + "方法对应的对应实体类没有createBy这个属性!");
            }

        }
        return pjp.proceed(args);
    }

    @Around("save()")
    public Object saveMethod(ProceedingJoinPoint pjp) throws Throwable {
        String name = pjp.getSignature().getName();
        Object[] args = pjp.getArgs();
        if (args != null && args.length >= 1) {

            try {
                //保存方法
                ReflectUtil.invoke(args[0],"setCreateTime",new Date());
                //测试者登录会进入日志,但是数据库没有createBy列,会报错
                RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
                if(requestAttributes != null){
                    HttpSession session = (HttpSession) requestAttributes.resolveReference(RequestAttributes.REFERENCE_SESSION);
                    Userinfo userInfo= (Userinfo) session.getAttribute("user");
                    //测试者登录会进入日志,但是数据库没有createBy列,会报错
                    ReflectUtil.invoke(args[0],"setCreateBy", userInfo.getUsername());
                }
            } catch (Exception e) {
                e.printStackTrace();
                log.info(name + "方法对应的对应实体类没有createBy这个属性!");
            }
        }
        return pjp.proceed(args);
    }
}

