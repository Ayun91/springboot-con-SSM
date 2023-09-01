package com.aaa.service.log;

import com.aaa.entity.log.Logger;
import com.github.pagehelper.Page;

/**
 * (Log)表服务接口
 *
 * @author makejava
 * @since 2022-09-03 09:27:44
 */
public interface LogService {
    /**
     * 添加日志
     */
    public int insertLog(Logger logger);

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
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    Page<Logger> getAll(Integer page, Integer limit, Logger logger);

}
