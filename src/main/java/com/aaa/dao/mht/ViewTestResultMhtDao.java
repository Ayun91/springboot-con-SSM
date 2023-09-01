package com.aaa.dao.mht;

import com.aaa.entity.mht.ViewTestResultMht;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * (ViewTestResultMht)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-07 16:29:32
 */
public interface ViewTestResultMhtDao {

    List<ViewTestResultMht> getAll(ViewTestResultMht viewTestResultMht);

    Integer deleteTesterMht(@Param("ids") Integer[] ids);

    Integer deleteResultMht(@Param("ids") Integer[] ids);

    ViewTestResultMht getById(Integer testerId);

    List<Map<String,Object >> getByTesterId(Integer testerId);

    List<Map<String,Object>> getPersonality();

   List<Map<String,Integer>> getPlanId();


    List<ViewTestResultMht> getNormalStudent(ViewTestResultMht viewTestResultMht);

    List<ViewTestResultMht> getAbnormalStudent(ViewTestResultMht viewTestResultMht);

    List<ViewTestResultMht> getInvalidStudent(ViewTestResultMht viewTestResultMht);
}

