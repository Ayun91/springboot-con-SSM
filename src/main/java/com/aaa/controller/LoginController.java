package com.aaa.controller;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.entity.system.Userinfo;
import com.aaa.service.system.UserinfoService;
import com.aaa.utils.MyTools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/8/29 15:30
 * @description：
 * @modified By：
 * @version:
 */
@RestController
public class LoginController extends BaseController {

    private String ip;

    private String port;

    public void setPort(String port) {
        this.port = port;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    @Autowired
    private UserinfoService userinfoService;


    @PostMapping("login.do")
    public Result login(@RequestBody Userinfo user, HttpSession session) {

        Userinfo newUser = userinfoService.getUserByUsername(user.getUsername());
        if (ObjectUtil.isEmpty(newUser)) {
            return fail("用户名不存在");
        } else {
            String passwordSalt = MyTools.makePasswordSalt(user.getPassword(), newUser.getSalt());
            if (Objects.equals(newUser.getStatus(), "1")) {
                if (newUser.getPassword().equals(passwordSalt)) {
                    Map<String, Object> menuList = userinfoService.getMenuByUserName(user.getUsername());
                    session.setAttribute("user", newUser);
                    session.setAttribute("menuList", menuList);
                    //登录成功，把IP和端口放入session中（加载二维码时要访问的主机）
                    session.setAttribute("ip",ip);
                    session.setAttribute("port",port);
                    //vue
                    Map<String,Object> respMap=new HashMap<>();
                    respMap.put("user",newUser);
                    respMap.put("menuList",menuList);
                    respMap.put("ip",ip);
                    respMap.put("port",port);

                    return success("登录成功",respMap);
                } else {
                    return fail("密码错误");
                }
            }
            return fail("账号被禁用");
        }
    }
}
