package com.aaa.service.system;

import com.aaa.entity.system.Menu;

import java.util.List;

public interface MenuService {
    List<Menu> getAllMenu();

    Integer saveMenu(Menu menu);

    Integer deleteMenuById(Integer menuId);

    Integer updateMenu(Menu menu);

    Menu getParentNameById(Integer menuId);
}
