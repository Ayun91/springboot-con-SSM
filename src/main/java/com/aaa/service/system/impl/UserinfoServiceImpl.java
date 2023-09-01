package com.aaa.service.system.impl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.system.UserinfoDao;
import com.aaa.entity.system.Menu;
import com.aaa.entity.system.Userinfo;
import com.aaa.entity.system.UserinfoVo;
import com.aaa.service.system.UserinfoService;
import com.aaa.utils.MyTools;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/8/30 21:54
 * @description：
 * @modified By：
 * @version:
 */
@Service
public class UserinfoServiceImpl implements UserinfoService {

    @Autowired
    private UserinfoDao userinfoDao;

    @Override
    public Page<UserinfoVo> getAll(Integer page, Integer limit, Userinfo userinfo) {

        PageHelper.startPage(page, limit);
        return (Page<UserinfoVo>) userinfoDao.getAll(userinfo);
    }

    @Override
    public Userinfo getUserByUsername(String username) {
        return userinfoDao.getUserByUsername(username);
    }

    @Override
    public boolean saveUserinfo(Userinfo userinfo) {
        String password = userinfo.getPassword();
        Map<String, String> map = MyTools.makePasswordSalt(password);
        userinfo.setPassword(map.get("password"));
        userinfo.setSalt(map.get("salt"));

        Integer save = userinfoDao.save(userinfo);
        //往tbl_user_role表中添加数据
        Integer saveRoleUser = userinfoDao.insertRoleUser(userinfo.getUserid(), userinfo.getRoleId());
        //返回值为两者相加大于等于2则为成功
        return save + saveRoleUser >= 2;
    }

    //查询菜单
    @Override
    public Map<String, Object> getMenuByUserName(String username) {
        List<Menu> menuList = userinfoDao.getMenuByUserName(username);

        List<Menu> firstMenuList = new ArrayList<>();
        List<Menu> secondMenuList = new ArrayList<>();

        for (Menu menu : menuList) {
            if ("M".equals(menu.getMenuType())) {
                firstMenuList.add(menu);
            }
            if ("C".equals(menu.getMenuType())) {
                secondMenuList.add(menu);
            }
        }
        Map<String, Object> map = new HashMap<>();
        map.put("firstMenu", firstMenuList);
        map.put("secondMenu", secondMenuList);
        return map;
    }

    @Override
    public Integer delete(Integer[] ids) {
        return userinfoDao.delete(ids);
    }

    //重置密码
    @Override
    public Integer updatePwd(Userinfo userinfo) {
        String password = userinfo.getPassword();
        Map<String, String> map = MyTools.makePasswordSalt(password);
        userinfo.setPassword(map.get("password"));
        userinfo.setSalt(map.get("salt"));
        return userinfoDao.updatePwd(userinfo);
    }

    @Override
    public Integer updateById(Userinfo userinfo) {
        if (ObjectUtil.isEmpty(userinfo.getStatus())) {
            userinfo.setStatus("0");
        }
        Integer update = userinfoDao.update(userinfo);
        Integer integer = userinfoDao.updateRoleUser(userinfo.getUserid(), userinfo.getRoleId());
        return update + integer;
    }

    @Override
    public Userinfo getById(Integer id) {
        return userinfoDao.getById(id);
    }

    @Override
    public List<Userinfo> getByRoleId(Integer id) {
        return userinfoDao.getByRoleId(id);
    }

    @Override
    public List<Userinfo> getByDeptId(Integer[] ids) {
        return userinfoDao.getByDeptId(ids);
    }

    @Override
    public List<Userinfo> repetitionName(String userName) {
        return userinfoDao.repetitionName(userName);
    }

    @Override
    public List<Userinfo> queryAll() {
        return userinfoDao.queryAll();
    }

    @Override
    public boolean deleteById(Integer userid) {
        return userinfoDao.deleteById(userid);
    }

    @Override
    public List<Userinfo> queryAllByPageAndLimit(int page, int limit) {
        return userinfoDao.queryAllByPageAndLimit(page,limit);
    }
}
