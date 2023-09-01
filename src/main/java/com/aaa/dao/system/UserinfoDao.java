package com.aaa.dao.system;

import com.aaa.entity.system.Menu;
import com.aaa.entity.system.Userinfo;
import com.aaa.entity.system.UserinfoVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserinfoDao {

    List<UserinfoVo> getAll(Userinfo userinfo);

    Userinfo getUserByUsername(String username);

    Integer save(Userinfo userinfo);

    List<Menu> getMenuByUserName(String username);

    Integer delete(@Param("ids") Integer[] ids);

    Integer insertRoleUser(@Param("userid") Integer userid, @Param("roleid") Integer roleId);

    Integer updatePwd(Userinfo userinfo);

    Integer update(Userinfo userinfo);

    Userinfo getById(Integer id);

    List<Userinfo> getByRoleId(Integer id);

    List<Userinfo> getByDeptId(@Param("ids") Integer[] ids);

    Integer updateRoleUser(@Param("userid") Integer userid, @Param("roleid") Integer roleId);

    List<Userinfo> repetitionName(String userName);

    List<Userinfo> queryAll();
    boolean deleteById(Integer userid);
    List<Userinfo> queryAllByPageAndLimit(int page,int limit);
}
