package com.aaa.controller.system;

import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.system.LayUiTree;
import com.aaa.entity.system.Menu;
import com.aaa.service.system.MenuService;
import com.aaa.utils.TreeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/6 9:02
 * @description：
 * @modified By：
 * @version:
 */
@RestController
@RequestMapping("menu")
public class MenuController extends BaseController {

    @Autowired
    private MenuService menuService;

    /**
     * 跳转视图
     *
     * @param modelAndView
     * @return
     */
    @RequestMapping("toShowMenu.do")
    public ModelAndView toShowMenu(ModelAndView modelAndView) {
        modelAndView.setViewName("system/showMenu");
        return modelAndView;
    }

    /**
     * 查询所有菜单
     *
     * @return
     */
    @GetMapping("getAllMenu.do")
    public Result getAllMenu() {
        List<Menu> allMenu = menuService.getAllMenu();
        return success(allMenu);
    }

    /**
     * 查询所有菜单，将菜单列表转换为树列表
     *
     * @return
     */
    @GetMapping("getAllMenus.do")
    public Result getAllMenus() {
        List<Menu> allMenu = menuService.getAllMenu();
        List<LayUiTree> list = TreeUtil.fromMenuListToTreeList(allMenu);
        return success(list);
    }

    /**
     * 添加菜单
     *
     * @param menu
     * @return
     */
    @PostMapping("saveMenu.do")
    public Result saveMenu(@RequestBody Menu menu) {

        Integer saveMenu = menuService.saveMenu(menu);
        if (saveMenu > 0) {
            return success();
        }
        return fail();
    }

    /**
     * 根据Id删除菜单
     *
     * @param menuId
     * @return
     */
    @DeleteMapping("deleteMenuById.do")
    public Result deleteMenuById(@RequestParam Integer menuId) {
        Integer deleteMenuById = menuService.deleteMenuById(menuId);
        if (deleteMenuById > 0) {
            return success("删除成功");
        }
        return fail("删除失败");
    }

    /**
     * 修改菜单
     *
     * @param menu
     * @return
     */
    @PutMapping("updateMenu.do")
    public Result updateMenu(@RequestBody Menu menu) {

        Integer integer = menuService.updateMenu(menu);
        if (integer > 0) {
            return success("修改成功");
        }
        return fail("修改失败");
    }

    /**
     * 通过菜单的Id查询父节点的名称
     *
     * @param menuId
     * @return
     */
    @GetMapping("getParentNameById.do")
    public Result getParentNameById(Integer menuId) {
        if (menuId == 0) {
            Menu menu = new Menu();
            menu.setMenuName("此目录为根目录");
            return success("", menu);
        }
        Menu menu = menuService.getParentNameById(menuId);
        return success(menu);
    }
}