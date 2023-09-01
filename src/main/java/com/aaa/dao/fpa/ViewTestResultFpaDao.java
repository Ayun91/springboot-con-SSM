package com.aaa.dao.fpa;

import com.aaa.entity.fpa.ResultDiv;
import com.aaa.entity.fpa.ViewTestResultFpa;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ViewTestResultFpaDao {
    List<ViewTestResultFpa> getAll(ViewTestResultFpa viewTestResultFpa);

    Integer deleteTesterFpa(@Param("ids") Integer[] ids);

    Integer deleteResultFpa(@Param("ids") Integer[] ids);

    ViewTestResultFpa getById(Integer testerId);

    ResultDiv getResultDiv(Integer id);
}
