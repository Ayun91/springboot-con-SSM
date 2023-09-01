package com.aaa.controller.system;

import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.system.Dept;
import com.aaa.service.system.DeptService;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/dept")
public class DeptController extends BaseController {
    @Autowired
    private DeptService deptService;

    @RequestMapping("toShowDept.do")
    public ModelAndView toShowDept(ModelAndView modelAndView){
        modelAndView.setViewName("system/showDept");
        return modelAndView;
    }

    @RequestMapping("/getAll.do")
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, Dept dept){
        Page<Dept> depts = deptService.getAll(page,limit,dept);
        return new Result(0,depts.getTotal(),depts);
    }

    @RequestMapping("/getAllByStatus.do")
    public Result getAllByStatus() {
        List<Dept> depts = deptService.getAllByStatus();
        return new Result(0, "", depts);
    }

    @PostMapping("/saveDept.do")
    public Result saveDept(@RequestBody Dept dept){

        Integer saveDept = deptService.saveDept(dept);
        if (saveDept>0){
            return success("添加成功");
        }
        return fail("添加失败");
    }

    @PutMapping("/updateDept.do")
    public Result updateDept(@RequestBody Dept dept){
        Dept deptById = deptService.getDeptById(dept.getDeptId());
        if (deptById.getDeptName().equals(dept.getDeptName())){
                Integer updateDept = deptService.updateDept(dept);
                if (updateDept>0){
                    return success("修改成功");
                }
                return fail("修改失败");
            }
        if (deptService.repetitionName(dept.getDeptName()).size()<1){
            Integer updateDept = deptService.updateDept(dept);
            if (updateDept>0){
                return success("修改成功");
            }
            return fail("修改失败");
        }
         return fail("部门名称重复");
    }

    @DeleteMapping("deleteDept.do")
    public Result deleteDept(@RequestParam Integer[] ids){

        boolean deleteDept = deptService.deleteDept(ids);
        if (deleteDept){
            return success("删除成功");
        }
        return fail("有关联用户，删除失败");
    }

    /**
     * 部门名称重复性校验
     * @param deptName
     * @return
     */
    @GetMapping("repetitionName.do")
    public Result repetitionName(String deptName){
       if (ObjectUtil.isNotEmpty(deptName)){
           List<Dept> depts = deptService.repetitionName(deptName);
           if (depts.size()<1){
               return success("部门名称可用");
           }
           return fail("部门名称重复");
       }
       return fail("请输入部门名称");
    }
}
