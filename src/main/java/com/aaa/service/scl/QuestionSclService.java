package com.aaa.service.scl;

import com.aaa.entity.scl.QuestionScl;
import com.github.pagehelper.Page;

import java.util.List;

public interface QuestionSclService {
    Page<QuestionScl> getAll(Integer page, Integer limit, QuestionScl questionScl);

    List<QuestionScl> getAllByStatus();

    Integer saveQuestionScl(QuestionScl questionScl);

    Integer updateQuestionScl(QuestionScl questionScl);

    Integer deleteQuestionScl(Integer[] ids);

    Integer querySclQuesName(QuestionScl questionScl);
}
