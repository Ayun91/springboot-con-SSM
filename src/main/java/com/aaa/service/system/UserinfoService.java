package com.aaa.service.system;

import com.aaa.entity.system.Userinfo;
import com.aaa.entity.system.UserinfoVo;
import com.github.pagehelper.Page;

import java.util.List;
import java.util.Map;

public interface UserinfoService {

    Page<UserinfoVo> getAll(Integer page, Integer limit, Userinfo userinfo);

    Userinfo getUserByUsername(String username);

    boolean saveUserinfo(Userinfo userinfo);

    Map<String, Object> getMenuByUserName(String username);

    Integer delete(Integer[] ids);

    Integer updatePwd(Userinfo user);

    Integer updateById(Userinfo userinfo);

    Userinfo getById(Integer id);

    List<Userinfo> getByRoleId(Integer id);

    List<Userinfo> getByDeptId(Integer[] ids);

    List<Userinfo> repetitionName(String userName);

    List<Userinfo> queryAll();

    boolean deleteById(Integer userid);
    List<Userinfo> queryAllByPageAndLimit(int page,int limit);
}
