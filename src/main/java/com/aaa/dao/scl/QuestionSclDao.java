package com.aaa.dao.scl;

import com.aaa.entity.scl.QuestionScl;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Administrator
 */
public interface QuestionSclDao {

    List<QuestionScl> getAll(QuestionScl questionScl);

    Integer saveQuestionScl(QuestionScl questionScl);

    Integer updateQuestionScl(QuestionScl questionScl);

    Integer deleteQuestionScl(@Param("ids") Integer[] ids);

    List<QuestionScl> getAllByStatus();

    /**
     * 题库重复校验
     *
     * */
    Integer querySclQuesName(QuestionScl questionscl);
}
