package com.aaa.dao.scl;

import com.aaa.entity.scl.ViewTestResultScl;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ViewTestResultSclDao {
    List<ViewTestResultScl> getAll(ViewTestResultScl viewTestResultScl);

    Integer deleteTesterScl(@Param("ids") Integer[] ids);

    Integer deleteResultScl(@Param("ids") Integer[] ids);

    ViewTestResultScl getById(Integer testerId);
    List<ViewTestResultScl> queryALLPlan();

    List<ViewTestResultScl> getAllException(ViewTestResultScl viewTestResultScl);
}
