package com.aaa.controller.system;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.system.LayUiTree;
import com.aaa.entity.system.Menu;
import com.aaa.entity.system.Role;
import com.aaa.service.system.RoleService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/8/31 16:29
 * @description：
 * @modified By：
 * @version:
 */
@RestController
@RequestMapping("role")
public class RoleController extends BaseController {

    @Autowired
    private RoleService roleService;

    @RequestMapping("toShowRole.do")
    public ModelAndView toShowRole(ModelAndView modelAndView) {
        modelAndView.setViewName("system/showRole");
        return modelAndView;
    }

    @GetMapping("getAll.do")
    public Result getAll(Integer page, Integer limit) {
        Page<Role> all = roleService.getAll(page, limit);
        return new Result(0, all.getTotal(), all.getResult());
    }
    @GetMapping("getAllByStatus.do")
    public Result getAllByStatus(){
        List<Role> allByStatus = roleService.getAllByStatus();
        if (ObjectUtil.isNotEmpty(allByStatus)&&allByStatus.size()>0){
            return success(allByStatus);
        }
        return fail();
    }

    @CrossOrigin
    @RequestMapping("getAllMenu.do")
    public Result getAllMenu() {
        List<Menu> allMenu = roleService.getAllMenu();
        List<LayUiTree> list = new ArrayList<>();
        for (Menu menu : allMenu) {
            if (menu.getParentId() == 0) {
                LayUiTree layUiTree = new LayUiTree();
                layUiTree.setTitle(menu.getMenuName());
                layUiTree.setId(menu.getMenuId());
                layUiTree.setChildren(getChildren(menu.getMenuId(), allMenu));
                list.add(layUiTree);
            }
        }
        return success(list);
    }

    private List<LayUiTree> getChildren(Long parentId, List<Menu> allMenu) {

        List<LayUiTree> list = new ArrayList<>();
        for (Menu menu : allMenu) {
            if (menu.getParentId().equals(parentId)) {
                LayUiTree tree = new LayUiTree();
                tree.setId(menu.getMenuId());
                tree.setTitle(menu.getMenuName());
                tree.setUrl(menu.getUrl());
                tree.setChildren(getChildren(menu.getMenuId(), allMenu));
                list.add(tree);
            }
        }
        return list;
    }

    /**
     * 添加菜单
     * @param role
     * @param menus
     * @return
     */
    @PostMapping("save.do")
    public Result save(Role role, String menus) {

        if (!"".equals(menus)){
            Integer save = roleService.save(role);
            if (save > 0) {
                String[] menusId = menus.split(",");
                Integer integer = roleService.insertRoleMenu(role.getRoleId(), menusId);
                if (integer > 0) {
                    return new Result(0, "添加成功", null);
                }
            }
            return fail();
        }
        return new Result(1, "请选择菜单权限", null);
    }

    @PostMapping("update.do")
    public Result update(Role role, String menus) {

        Role byId = roleService.getById(role.getRoleId());
        if (byId.getRoleName().equals(role.getRoleName())   ){
            //1 更新角色表
            Integer update = roleService.update(role);
            //2 角色表更新成功后，删除此角色的角色-菜单表中的数据
            //3 重新添加新的角色-菜单表
            if (update > 0) {
                //删除
                Integer integer = roleService.deleteRoleMenu(role.getRoleId());
                if (integer>0){
                    String[] menusId = menus.split(",");
                    //重新添加
                    Integer result = roleService.insertRoleMenu(role.getRoleId(), menusId);
                    if (result > 0) {
                        //成功返回结果
                        return new Result(0, "修改成功", null);
                    }
                }
            }
            //失败
            return new Result(1, "修改失败", null);
        }
        List<Role> roles = roleService.repetitionName(role.getRoleName());
        if (roles.size()<1){
            //1 更新角色表
            Integer update = roleService.update(role);
            //2 角色表更新成功后，删除此角色的角色-菜单表中的数据
            //3 重新添加新的角色-菜单表
            if (update > 0) {
                //删除
                Integer integer = roleService.deleteRoleMenu(role.getRoleId());
                if (integer>0){
                    String[] menusId = menus.split(",");
                    //重新添加
                    Integer result = roleService.insertRoleMenu(role.getRoleId(), menusId);
                    if (result > 0) {
                        //成功返回结果
                        return new Result(0, "修改成功", null);
                    }
                }
            }
            //失败
            return new Result(1, "修改失败", null);
        }
       return fail("角色名称重复");
    }

    @DeleteMapping("delete.do")
    public Result delete(@RequestParam Integer id) {
        //调用service中的方法
        Integer delete = roleService.delete(id);
        if (delete > 0) {
            return new Result(0, "删除成功", null);
        } else if (delete == -1) {
            return new Result(1, "此数据有关联数据，删除失败", null);
        }
        return new Result(1, "删除失败", null);
    }

    @GetMapping("getSelectMenu.do")
    public Result getSelectMenu(Integer roleId) {
        List<Menu> selectMenu = roleService.getSelectMenu(roleId);
        if (ObjectUtil.isNotEmpty(selectMenu)) {
            return success(selectMenu);
        }
        return fail();
    }

    @GetMapping("repetitionName.do")
    public Result repetitionName(String roleName){
        List<Role> roles = roleService.repetitionName(roleName);
        if (roles.size()<1){
            return success("角色名称可用");
        }
        return fail("角色名称重复");
    }

}
