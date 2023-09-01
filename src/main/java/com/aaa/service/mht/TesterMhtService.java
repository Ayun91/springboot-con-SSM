package com.aaa.service.mht;


import com.aaa.entity.mht.TesterMht;

/**
 * (TesterMht)表服务接口
 *
 * @author makejava
 * @since 2022-09-06 09:47:27
 */
public interface TesterMhtService {


    Integer queryById(Integer id);
    TesterMht queryByPhone(String phone);

    TesterMht saveTesterMht(TesterMht testerMht);


    Integer modify(TesterMht testerMht);


    boolean deleteById();

}
