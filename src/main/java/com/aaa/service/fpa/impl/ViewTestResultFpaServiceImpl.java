package com.aaa.service.fpa.impl;

import com.aaa.dao.fpa.ViewTestResultFpaDao;
import com.aaa.entity.fpa.ResultDiv;
import com.aaa.entity.fpa.ViewTestResultFpa;
import com.aaa.service.fpa.ViewTestResultFpaService;
import com.github.pagehelper.Page;
import com.github.pagehelper.page.PageMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/5 15:20
 * @description：
 * @modified By：
 * @version:
 */
@Service
public class ViewTestResultFpaServiceImpl implements ViewTestResultFpaService {
    @Autowired
    private ViewTestResultFpaDao viewTestResultFpaDao;
    @Override
    public Page<ViewTestResultFpa> getAll(Integer page,Integer limit, ViewTestResultFpa viewTestResultFpa) {
        PageMethod.startPage(page,limit);
        return (Page<ViewTestResultFpa>)viewTestResultFpaDao.getAll(viewTestResultFpa);
    }

    @Override
    public Integer deleteResult(Integer[] ids) {
        Integer integer1 = viewTestResultFpaDao.deleteTesterFpa(ids);
        Integer integer = viewTestResultFpaDao.deleteResultFpa(ids);
        return integer+integer1;
    }

    @Override
    public ViewTestResultFpa getById(Integer testerId) {
        return viewTestResultFpaDao.getById(testerId);
    }

    @Override
    public Map<String, Integer> getColor() {
        List<ViewTestResultFpa> all = viewTestResultFpaDao.getAll(null);
        int red=0;
        int yellow=0;
        int blue=0;
        int green=0;
        int f=0;
        for (ViewTestResultFpa viewTestResultFpa : all) {
            int r = Integer.parseInt(viewTestResultFpa.getRedCount());
            int y = Integer.parseInt(viewTestResultFpa.getYellowCount());
            int b = Integer.parseInt(viewTestResultFpa.getBlueCount());
            int g = Integer.parseInt(viewTestResultFpa.getGreenCount());
            if (r > y && r > b && r > g) {
                red++;
            } else if (y > r && y > b && y > g) {
                yellow++;
            } else if (b > r && b > y && b > g) {
                blue++;
            } else if (g > r && g > y && g > b) {
                green++;
            } else {
                f++;
            }
        }
        Map<String ,Integer> map = new HashMap<>();
        map.put("red",red);
        map.put("yellow",yellow);
        map.put("blue",blue);
        map.put("green",green);
        map.put("f",f);
        return map;
    }

    @Override
    public ResultDiv getResultDiv(Integer id) {
        return viewTestResultFpaDao.getResultDiv(id);
    }
}