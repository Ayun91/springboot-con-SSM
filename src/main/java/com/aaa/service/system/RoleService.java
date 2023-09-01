package com.aaa.service.system;

import com.aaa.entity.system.Menu;
import com.aaa.entity.system.Role;
import com.github.pagehelper.Page;

import java.util.List;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/8/31 16:18
 * @description：
 * @modified By：
 * @version:
 */
public interface RoleService {
    Page<Role> getAll(Integer page, Integer limit);

    Integer save(Role role);

    Integer update(Role role);

    Integer delete(Integer id);

    List<Menu> getAllMenu();

    Integer insertRoleMenu(Integer roleId, String[] menusId);

    List<Menu> getSelectMenu(Integer roleId);

    Integer deleteRoleMenu(Integer roleId);

    List<Role> getAllByStatus();

    List<Role> repetitionName(String roleName);

    Role getById(Integer roleId);
}