package com.aaa.service.scl;

import com.aaa.entity.ReturnRecords;
import com.aaa.entity.scl.ViewTestResultScl;
import com.github.pagehelper.Page;

import java.util.List;
import java.util.Map;

public interface ViewTestResultSclService {

   List<ViewTestResultScl> getAll(Integer page, Integer limit, ViewTestResultScl viewTestResultScl);

    Integer deleteResult(Integer[] ids);

    ViewTestResultScl getById(Integer testerId);

    Map<String, Integer> getAllScl();

    List<ViewTestResultScl> queryALLPlan();


    Page<ReturnRecords> getReturnRecords(Integer page, Integer limit, ReturnRecords records);

    Integer saveReturn(ReturnRecords records);

    /**
     * 通过指定id删除回访记录的一条或多条数据
     * @param id
     * @return
     */
    Integer deleteReturn(int[] id);
    /**
     * 通过指定id修改回访记录
     * @param returnRecords
     * @return
     */
    Integer updateReturn(ReturnRecords returnRecords);
}
