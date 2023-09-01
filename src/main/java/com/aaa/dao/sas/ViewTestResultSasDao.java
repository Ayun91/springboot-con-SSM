package com.aaa.dao.sas;


import com.aaa.entity.ViewQuestionAnswer;
import com.aaa.entity.sas.ViewTestResultSas;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (ViewTestResultSas)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-06 09:28:47
 */
public interface ViewTestResultSasDao {

    List<ViewTestResultSas> getAll(ViewTestResultSas viewTestResultSas);

    Integer deleteTesterSas(@Param("ids") Integer[] ids);

    Integer deleteResultSas(@Param("ids") Integer[] ids);

    ViewTestResultSas getById(Integer testerId);

    List<ViewQuestionAnswer> getDetailsById(Integer id);

    List<ViewTestResultSas> getNormalStudent(ViewTestResultSas viewTestResultSas);

    List<ViewTestResultSas> getAbnormalStudent(ViewTestResultSas viewTestResultSas);
}

