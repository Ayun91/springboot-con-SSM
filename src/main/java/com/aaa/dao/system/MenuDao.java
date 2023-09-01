package com.aaa.dao.system;

import com.aaa.entity.system.Menu;

import java.util.List;

public interface MenuDao {
    /**
     * 查询所有菜单列表
     * @return list<menu>
     */
    List<Menu> getAllMenu();

    Integer saveMenu(Menu menu);

    Integer deleteMenuById(Integer menuId);

    Integer updateMenu(Menu menu);

    Menu getParentNameById(Integer menuId);
}
