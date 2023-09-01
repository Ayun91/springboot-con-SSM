package com.aaa.service.sas;



import com.aaa.entity.ReturnRecords;
import com.aaa.entity.ViewQuestionAnswer;
import com.aaa.entity.sas.ViewTestResultSas;
import com.github.pagehelper.Page;

import java.util.List;
import java.util.Map;

/**
 * (ViewTestResultSas)表服务接口
 *
 * @author makejava
 * @since 2022-09-06 09:33:49
 */
public interface ViewTestResultSasService {

    List<ViewTestResultSas> getAll(Integer page, Integer limit, ViewTestResultSas viewTestResultSas);

    Integer deleteResult(Integer[] ids);

    ViewTestResultSas getById(Integer testerId);

    Map<String,Integer> getCountColor();

    Page<ViewQuestionAnswer> getDetailsById(Integer page, Integer limit, Integer id);

    Page<ViewTestResultSas> getNormalStudent(Integer page, Integer limit, ViewTestResultSas viewTestResultSas);

    Page<ViewTestResultSas> getAbnormalStudent(Integer page, Integer limit, ViewTestResultSas viewTestResultSas);

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
