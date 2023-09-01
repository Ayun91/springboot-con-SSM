package com.aaa.service.log.impl;

import com.aaa.dao.log.LogDao;
import com.aaa.entity.log.Logger;
import com.aaa.service.log.LogService;
import com.github.pagehelper.Page;
import com.github.pagehelper.page.PageMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * (Log)表服务实现类
 *
 * @author makejava
 * @since 2022-09-03 09:27:44
 */
@Service
public class LogServiceImpl implements LogService {
    @Autowired
    private LogDao logDao;

    @Override
    public int insertLog(Logger logger) {
        return logDao.insertLog(logger);
    }

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Logger queryById(Integer id) {
        return this.logDao.queryById(id);
    }


    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.logDao.deleteById(id) > 0;
    }

    @Override
    public Page<Logger> getAll(Integer page, Integer limit, Logger logger) {
        PageMethod.startPage(page,limit);
        return (Page<Logger>) logDao.getALl(logger);
    }
}
