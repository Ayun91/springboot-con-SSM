package com.aaa.service.system.impl;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.dao.system.DeptDao;
import com.aaa.entity.system.Dept;
import com.aaa.entity.system.Userinfo;
import com.aaa.service.system.DeptService;
import com.aaa.service.system.UserinfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.page.PageMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeptServiceImpl implements DeptService {

    @Autowired
    private DeptDao deptDao;
    @Autowired
    private UserinfoService userinfoService;

    @Override
    public Page<Dept> getAll(Integer page,Integer limit,Dept dept) {
        PageMethod.startPage(page,limit);
        return (Page<Dept>) deptDao.getAll(dept);
    }

    @Override
    public List<Dept> getAllByStatus() {
        return deptDao.getAllByStatus();
    }

    @Override
    public Integer saveDept(Dept dept) {
        return deptDao.saveDept(dept);
    }

    @Override
    public Integer updateDept(Dept dept) {

        if (ObjectUtil.isEmpty(dept.getStatus())) {
            dept.setStatus("0");
        }

        return deptDao.updateDept(dept);
    }

    @Override
    public boolean deleteDept(Integer[] ids) {
        //查询要删除的部门，是否有用户关联
        List<Userinfo> userinfoList = userinfoService.getByDeptId(ids);
        if (userinfoList.isEmpty()){
            return deptDao.deleteDept(ids) > 0;
        }
        return false;
    }

    @Override
    public List<Dept> repetitionName(String deptName) {
        return deptDao.repetitionName(deptName);
    }

    @Override
    public Dept getDeptById(Integer deptId) {
        return deptDao.getDeptById(deptId);
    }
}
