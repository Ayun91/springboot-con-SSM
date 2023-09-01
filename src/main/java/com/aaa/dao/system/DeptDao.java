package com.aaa.dao.system;

import com.aaa.entity.system.Dept;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DeptDao {
    List<Dept> getAll(Dept dept);

    List<Dept> getAllByStatus();

    Integer saveDept(Dept dept);

    Integer updateDept(Dept dept);

    Integer deleteDept(@Param("ids") Integer[] ids);

    List<Dept> repetitionName(String deptName);

    Dept getDeptById(Integer deptId);
}
