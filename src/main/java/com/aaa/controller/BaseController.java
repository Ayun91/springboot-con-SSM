package com.aaa.controller;

import com.aaa.utils.MyConstants;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/8/29 15:30
 * @description：
 * @modified By：
 * @version:
 */
@RestControllerAdvice
public class BaseController {
    public Result success(){
        return new Result(0,"操作成功",null);
    }

    public Result success(String msg){
        return new Result(0,msg,null);
    }

    public Result success(String msg, Object data) {
        return new Result(0, msg, data);
    }

    public Result success(Long count, Object data){
        return new Result(0,"操作成功",count,data);
    }

    public Result success(Object data){
        return new Result(0,"操作成功",data);
    }

    public Result fail(){
        return new Result(1,"操作失败",null);
    }
    public Result fail(String msg){
        return new Result(1,msg,null);
    }
    public Result success(Object data, Long count)  {
        return new Result(MyConstants.SUCCESS_CODE,MyConstants.SUCCESS_MSG,count,data);
    }

    /**
     * 统一异常处理器
     * @param ex 处理的异常
     * @return 统一返回结果
     */
    @ExceptionHandler(Exception.class)
    public Result exception(Exception ex){
        ex.printStackTrace();
        return new Result(1,"异常被捕捉了",null);
    }
    /**
     * 重复键异常处理器（重复提交后由于手机号唯一而抛出的异常）
     * @param ex 处理的异常
     * @return 统一返回结果
     */
    @ExceptionHandler(DuplicateKeyException.class)
    public Result exception(DuplicateKeyException ex){
        ex.printStackTrace();
        return new Result(1,"你已经做过该测试",null);
    }


}
