package com.aaa.service.system.impl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.system.RoleDao;
import com.aaa.entity.system.Menu;
import com.aaa.entity.system.Role;
import com.aaa.entity.system.Userinfo;
import com.aaa.service.system.RoleService;
import com.aaa.service.system.UserinfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/8/31 16:28
 * @description：
 * @modified By：
 * @version:
 */
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleDao roleDao;
    @Autowired
    private UserinfoService userinfoService;

    @Override
    public Page<Role> getAll(Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        return (Page<Role>)roleDao.findAll();
    }

    @Override
    public Integer save(Role role) {
        String status = role.getStatus();
        if (ObjectUtil.isEmpty(status)|| !Objects.equals(status, "1")){
            role.setStatus("0");
        }
        return roleDao.save(role);
    }

    @Override
    public Integer update(Role role) {
        if (ObjectUtil.isEmpty(role.getStatus())){
            role.setStatus("0");
        }
        return roleDao.update(role);
    }

    /**
     * 删除角色
     * @param id 根据id
     * @return 影响的行数
     */
    @Override
    public Integer delete(Integer id) {

        List<Userinfo> roleList = userinfoService.getByRoleId(id);
        if (roleList.isEmpty()){
            return roleDao.delete(id);
        }else {
            return -1;
        }
    }

    @Override
    public List<Menu> getAllMenu() {
        return roleDao.getAllMenu();
    }

    @Override
    public Integer insertRoleMenu(Integer roleId, String[] menusId) {
        Integer num = 0;
        for (String menuId : menusId) {
            num = roleDao.saveRoleMenu(roleId, menuId);
            num++;
        }
        return num;
    }

    @Override
    public List<Menu> getSelectMenu(Integer roleId) {
        return roleDao.getSelectMenu(roleId);
    }

    @Override
    public Integer deleteRoleMenu(Integer roleId) {
        return roleDao.deleteRoleMenu(roleId);
    }

    @Override
    public List<Role> getAllByStatus() {
        return roleDao.getAllByStatus();
    }

    @Override
    public List<Role> repetitionName(String roleName) {
        return roleDao.repetitionName(roleName);
    }

    @Override
    public Role getById(Integer roleId) {
        return roleDao.getById(roleId);
    }
}
