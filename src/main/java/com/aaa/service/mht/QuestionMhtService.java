package com.aaa.service.mht;


import com.aaa.entity.mht.QuestionMht;
import com.github.pagehelper.Page;

import java.util.List;

/**
 * 心理健康诊断测验(QuestionMht)表服务接口
 *
 * @author makejava
 * @since 2022-09-01 09:40:50
 */
public interface QuestionMhtService {

    /**
     * 通过ID查询单条数据
     * @return 实例对象
     */
    List<QuestionMht> getAllByStatus();
    QuestionMht queryById(Integer id);




    Boolean repetition(QuestionMht questionMht);
    Integer insert(QuestionMht questionMht);


    Integer update(QuestionMht questionMht);

    Page<QuestionMht> findAll(Integer page, Integer limit, QuestionMht questionMht);

    Integer deleteByIds(Integer[] ids);

    List<QuestionMht> getDictionary();
}
