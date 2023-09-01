package com.aaa.service.mht.impl;

import com.aaa.dao.mht.TesterMhtDao;
import com.aaa.entity.mht.TesterMht;
import com.aaa.service.mht.TesterMhtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author ：Teacher杨（1745903518@qq.com）
 * @date ：Created in 2022/9/6 9:55
 * @description：
 * @modified By：
 * @version:
 */
@Service
public class TesterMhtServiceImpl implements TesterMhtService {
    @Autowired
    TesterMhtDao testerMhtDao;
    @Override
    public Integer queryById(Integer id) {
        return testerMhtDao.queryById(id);
    }

    @Override
    public TesterMht queryByPhone(String phone) {
        return testerMhtDao.queryByPhone(phone);
    }

    @Override
    public TesterMht saveTesterMht(TesterMht testerMht) {
        this.testerMhtDao.insert(testerMht);
        return testerMht;
    }

    @Override
    public Integer modify(TesterMht testerMht) {
        return testerMhtDao.modify(testerMht);
    }

    @Override
    public boolean deleteById() {
        return false;
    }
}