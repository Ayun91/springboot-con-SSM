package com.aaa.service.system.impl;

import com.aaa.dao.system.MenuDao;
import com.aaa.entity.system.Menu;
import com.aaa.service.system.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/6 9:05
 * @description：
 * @modified By：
 * @version:
 */
@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuDao menuDao;

    @Override
    public List<Menu> getAllMenu() {
        return menuDao.getAllMenu();
    }

    @Override
    public Integer saveMenu(Menu menu) {
        return menuDao.saveMenu(menu);
    }

    @Override
    public Integer deleteMenuById(Integer menuId) {
        return menuDao.deleteMenuById(menuId);
    }

    @Override
    public Integer updateMenu(Menu menu) {
        return menuDao.updateMenu(menu);
    }

    @Override
    public Menu getParentNameById(Integer menuId) {
        return menuDao.getParentNameById(menuId);
    }
}