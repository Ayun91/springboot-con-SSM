package com.aaa.dao.log;

import com.aaa.entity.log.Logger;

import java.util.List;

/**
 * (Log)表数据库访问层
 *
 * @author makejava
 * @since 2022-09-03 09:27:44
 */
public interface LogDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Logger queryById(Integer id);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

    List<Logger> getALl(Logger logger);

    int insertLog(Logger logger);

}

