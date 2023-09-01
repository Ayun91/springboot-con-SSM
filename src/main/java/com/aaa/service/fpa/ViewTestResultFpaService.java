package com.aaa.service.fpa;

import com.aaa.entity.fpa.ResultDiv;
import com.aaa.entity.fpa.ViewTestResultFpa;

import java.util.List;
import java.util.Map;

public interface ViewTestResultFpaService {

   List<ViewTestResultFpa> getAll(Integer page, Integer limit, ViewTestResultFpa viewTestResultFpa);

    Integer deleteResult(Integer[] ids);

    ViewTestResultFpa getById(Integer testerId);

    Map<String,Integer> getColor();

    ResultDiv getResultDiv(Integer id);
}
