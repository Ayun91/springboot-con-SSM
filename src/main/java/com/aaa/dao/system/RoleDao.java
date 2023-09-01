package com.aaa.dao.system;


import com.aaa.entity.system.Menu;
import com.aaa.entity.system.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleDao {
    List<Role> findAll();

    Integer save(Role role);

    Integer update(Role role);

    Integer delete(@Param("id") Integer id);

    List<Menu> getAllMenu();

    Integer saveRoleMenu(@Param("roleId") Integer roleId, @Param("menuId") String menuId);

    List<Menu> getSelectMenu(Integer roleId);

    Integer deleteRoleMenu(Integer roleId);

    List<Role> getAllByStatus();

    List<Role> repetitionName(String roleName);

    Role getById(Integer roleId);
}
