package com.aaa.service.system;

import com.aaa.entity.system.Dept;
import com.github.pagehelper.Page;

import java.util.List;

public interface DeptService {
    Page<Dept> getAll(Integer page, Integer limit, Dept dept);

    List<Dept> getAllByStatus();

    Integer saveDept(Dept dept);

    Integer updateDept(Dept dept);

    boolean deleteDept(Integer[] ids);

    List<Dept> repetitionName(String deptName);

    Dept getDeptById(Integer deptId);
}
