package com.aaa.controller.system;

import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.OssEntity;
import com.aaa.entity.system.Userinfo;
import com.aaa.entity.system.UserinfoVo;
import com.aaa.service.system.UserinfoService;
import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.aliyun.oss.OSSException;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;


@RequestMapping("/user")
@Controller
public class UserinfoController extends BaseController {

    @Resource
    private OssEntity ossEntity;

    @Autowired
    private UserinfoService userinfoService;


    @RequestMapping("toShowUserPage.do")
    public ModelAndView toShowUser() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("system/showUserinfo");
        return mav;
    }

    @RequestMapping("/getAll.do")
    @ResponseBody
    public Result getAll(@RequestParam Integer page, @RequestParam Integer limit, Userinfo userinfo) {
        Page<UserinfoVo> all = userinfoService.getAll(page, limit, userinfo);
        return new Result(0, all.getTotal(), all);
    }
    @CrossOrigin
    @RequestMapping("/queryAll.do")
    @ResponseBody
    public List<Userinfo> queryAll() {
        List<Userinfo> userinfoList = userinfoService.queryAll();
        return userinfoList;
    }
    //分页查询
    @RequestMapping("queryByPageAndLimit")
    public List<Userinfo>  queryByPageAndLimit(int page,int limit) {
        List<Userinfo> userinfoList = userinfoService.queryAllByPageAndLimit(page, limit);
        return userinfoList;
    }
    @RequestMapping("/save.do")
    @ResponseBody
    public Result save(@RequestBody Userinfo userinfo) {

        boolean save = userinfoService.saveUserinfo(userinfo);
        if (save) {
            return new Result(0, "添加成功", null);
        } else {
            return new Result(1, "添加失败", null);
        }
    }

    @RequestMapping("/delete.do")
    @ResponseBody
    public Result delete(@RequestParam Integer[] ids) {
        Integer delete = userinfoService.delete(ids);
        if (delete > 0) {
            return new Result(0, "删除成功", null);
        }
        return new Result(1, "删除失败", null);
    }

    @CrossOrigin
    @RequestMapping("deleteById")
    public ResponseEntity<Boolean> deleteById(Integer userid) {
        return ResponseEntity.ok(this.userinfoService.deleteById(userid));
    }
    @RequestMapping("/update.do")
    @ResponseBody
    public Result update(@RequestBody Userinfo userinfo) {
        Integer userid = userinfo.getUserid();
        Userinfo byId = userinfoService.getById(userid);
        String firstUsername = byId.getUsername();
        if (firstUsername.equals(userinfo.getUsername())){
            List<Userinfo> users = userinfoService.repetitionName(userinfo.getUsername());
            if (users.size() <= 1) {
                Integer update = userinfoService.updateById(userinfo);
                if (update >= 2) {
                    return new Result(0, "修改成功", null);
                }
                return new Result(1, "修改失败", null);
            }
        }
        List<Userinfo> users = userinfoService.repetitionName(userinfo.getUsername());
        if (users.size() < 1) {
            Integer update = userinfoService.updateById(userinfo);
            if (update >= 2) {
                return new Result(0, "修改成功", null);
            }
            return new Result(1, "修改失败", null);
        }
        return fail("用户名已存在，请重新输入");
    }

    @RequestMapping("/getById.do")
    @ResponseBody
    public Result getById(@RequestParam Integer id) {
        Userinfo user = userinfoService.getById(id);
        if (user != null) {
            return new Result(0, "", user);
        }
        return new Result(1, "", "");
    }

    @RequestMapping("/resetPwd.do")
    @ResponseBody
    public Result updatePwd(@RequestBody Userinfo user) {
        Integer integer = userinfoService.updatePwd(user);
        if (integer > 0) {
            return new Result(0, "修改成功", null);
        }
        return new Result(1, "修改失败", null);
    }

    @GetMapping("repetitionName.do")
    public Result repetitionName(String userName) {
        List<Userinfo> users = userinfoService.repetitionName(userName);
        if (users.size() < 1) {
            return success("用户名可用");
        }
        return fail("用户名已存在");
    }

    /**
     * 文件上传
     *
     * @param file 文件
     * @return 统一返回类
     */
    @RequestMapping("/upload.do")
    @ResponseBody
    public Result upload(MultipartFile file) {
        String filename = file.getOriginalFilename();
        // 创建OSSClient实例。
        OSS ossClient = new OSSClientBuilder().build(ossEntity.getEndpoint(), ossEntity.getAccessKeyId(), ossEntity.getAccessKeySecret());
        try {
            try {
                String newFileName = UUID.randomUUID() + filename;
                ossClient.putObject(ossEntity.getBucketName(), newFileName, new ByteArrayInputStream(file.getBytes()));
                String url = "https://" + ossEntity.getBucketName() + "." + ossEntity.getEndpoint() + "/" + newFileName;
                return new Result(0, "上传成功", url);
            } catch (IOException e) {
                e.printStackTrace();
            }

        } catch (OSSException oe) {
            System.out.println("Caught an OSSException, which means your request made it to OSS, "
                    + "but was rejected with an error response for some reason.");
            System.out.println("Error Message:" + oe.getErrorMessage());
            System.out.println("Error Code:" + oe.getErrorCode());
            System.out.println("Request ID:" + oe.getRequestId());
            System.out.println("Host ID:" + oe.getHostId());
        } catch (ClientException ce) {
            System.out.println("Caught an ClientException, which means the client encountered "
                    + "a serious internal problem while trying to communicate with OSS, "
                    + "such as not being able to access the network.");
            System.out.println("Error Message:" + ce.getMessage());
        } finally {
            if (ossClient != null) {
                ossClient.shutdown();
            }
        }
        return new Result(1, "上传失败", null);
    }
}
