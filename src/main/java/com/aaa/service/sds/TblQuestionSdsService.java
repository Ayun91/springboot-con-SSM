package com.aaa.service.sds;


import com.aaa.entity.sds.QuestionSds;
import com.aaa.entity.system.PageSortEntity;

import java.util.List;

/**
 * 问题表(TblQuestionSds)表服务接口
 *
 * @author makejava
 * @since 2022-07-15 20:48:06
 */
public interface TblQuestionSdsService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionSds queryById(Integer id);

    /**
     * 分页查询
     *
     * @param tblQuestionSds 筛选条件

     * @return 查询结果
     */

    List<QuestionSds> queryAll(PageSortEntity pageSortEntity, QuestionSds tblQuestionSds);

    /**
     * 新增数据
     *
     * @param tblQuestionSds 实例对象
     * @return 实例对象
     */
    QuestionSds save(QuestionSds tblQuestionSds);

    /**
     * 修改数据
     *
     * @param tblQuestionSds 实例对象
     * @return 实例对象
     */
    boolean update(QuestionSds tblQuestionSds);

    /**
     * 通过主键删除数据
     *
     * @param idList 主键
     * @return 是否成功
     */
    boolean deleteById(String idList);
    /**
     * @create by: feng (zhaixing@163.com)
     * @description: 查询题目是否重名
     * @create time: 2022/7/14 17:07
     * @param "questionFpa"
     * @return boolean
     */

    boolean repetitionName(QuestionSds TblQuestionSds);

    List<QuestionSds> findAllQuestion();

}
