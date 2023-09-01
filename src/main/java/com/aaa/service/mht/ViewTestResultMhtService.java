package com.aaa.service.mht;

import com.aaa.entity.ReturnRecords;
import com.aaa.entity.mht.ViewTestResultMht;
import com.github.pagehelper.Page;

import java.util.List;
import java.util.Map;

/**
 * (ViewTestResultMht)表服务接口
 *
 * @author makejava
 * @since 2022-09-07 16:29:35
 */
public interface ViewTestResultMhtService {
    Page<ViewTestResultMht> getAll(Integer page, Integer limit, ViewTestResultMht viewTestResultMht);

    Integer deleteResult(Integer[] ids);

    ViewTestResultMht getById(Integer testerId);

    List<Map<String, Object>> getPersonality();

    Page<Map<String,Object >> getByTesterId(Integer page, Integer limit, Integer testerId);

    List<Map<String,Integer>> getPlanId();


    Page<ViewTestResultMht> getNormalStudent(Integer page, Integer limit, ViewTestResultMht viewTestResultMht);

    Page<ViewTestResultMht> getAbnormalStudent(Integer page, Integer limit, ViewTestResultMht viewTestResultMht);

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

    Page<ViewTestResultMht> getInvalidStudent(Integer page, Integer limit, ViewTestResultMht viewTestResultMht);
}
