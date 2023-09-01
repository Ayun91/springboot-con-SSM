package com.aaa.controller.front;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import com.aaa.controller.BaseController;
import com.aaa.controller.Result;
import com.aaa.entity.ResultSds;
import com.aaa.entity.fpa.QuestionFpa;
import com.aaa.entity.fpa.TestResultFpa;
import com.aaa.entity.fpa.TesterFpa;
import com.aaa.entity.fpa.ViewTestResultFpa;
import com.aaa.entity.front.Question;
import com.aaa.entity.front.TestPlan;
import com.aaa.entity.front.TestResultVo;
import com.aaa.entity.front.TesterVo;
import com.aaa.entity.mht.QuestionMht;
import com.aaa.entity.mht.TestResultMht;
import com.aaa.entity.mht.TesterMht;
import com.aaa.entity.sas.QuestionSas;
import com.aaa.entity.sas.TestResultSas;
import com.aaa.entity.sas.TesterSas;
import com.aaa.entity.sas.ViewTestResultSas;
import com.aaa.entity.scl.QuestionScl;
import com.aaa.entity.scl.TestResultScl;
import com.aaa.entity.scl.TesterScl;
import com.aaa.entity.sds.QuestionSds;
import com.aaa.entity.sds.TestResultSds;
import com.aaa.entity.sds.TesterSds;
import com.aaa.service.fpa.QuestionFpaService;
import com.aaa.service.fpa.TestResultFpaService;
import com.aaa.service.fpa.TesterFpaService;
import com.aaa.service.fpa.ViewTestResultFpaService;
import com.aaa.service.front.TestPlanService;
import com.aaa.service.mht.QuestionMhtService;
import com.aaa.service.mht.TestResultMhtService;
import com.aaa.service.mht.TesterMhtService;
import com.aaa.service.sas.QuestionSasService;
import com.aaa.service.sas.TestResultSasService;
import com.aaa.service.sas.TesterSasService;
import com.aaa.service.sas.ViewTestResultSasService;
import com.aaa.service.scl.QuestionSclService;
import com.aaa.service.scl.TestResultSclService;
import com.aaa.service.scl.TesterSclService;
import com.aaa.service.sds.ResultSdsService;
import com.aaa.service.sds.TblQuestionSdsService;
import com.aaa.service.sds.TestResultSdsService;
import com.aaa.service.sds.TesterSdsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author ：shang838449693@qq.com
 * @date ：Created in 2022/9/2 17:25
 * @description：
 * @modified By：
 * @version:
 */
@RestController
@RequestMapping("/front")
public class FrontController extends BaseController {
    @Autowired
    private TestPlanService testPlanService;
    @Autowired
    private TesterFpaService testerFpaService;
    @Autowired
    private QuestionFpaService questionFpaService;
    @Autowired
    private TestResultFpaService testResultFpaService;


    @Autowired
    private TesterSasService testerSasService;
    @Autowired
    private QuestionSasService questionSasService;
    @Autowired
    private TestResultSasService testResultSasService;


    @Autowired
    private TesterSclService testerSclService;
    @Autowired
    private QuestionSclService questionSclService;
    @Autowired
    private TestResultSclService testResultSclService;
    @Autowired
    private ViewTestResultFpaService viewTestResultFpaService;
    @Autowired
    private ViewTestResultSasService viewTestResultSasService;

    @Autowired
    TblQuestionSdsService tblQuestionSdsService;

    @Autowired
    TesterSdsService testerSdsService;

    @Autowired
    ResultSdsService resultSdsService;

    @Autowired
    TestResultSdsService testResultSdsService;
    @Autowired
    private TestResultMhtService testResultMhtService;
    @Autowired
    private TesterMhtService testerMhtService;
    @Autowired
    private QuestionMhtService questionMhtService;


    @RequestMapping("toShowQuestion.do")
    public ModelAndView toShowQuestion(ModelAndView modelAndView) {
        modelAndView.setViewName("front/testQuestion");
        return modelAndView;
    }

    @RequestMapping("/checkTest.do")
    public Result checkTest(@RequestBody TesterVo testerVo, HttpSession session) {

        String testCode = testerVo.getTestCode();
        TestPlan testPlan = testPlanService.getTestPlanByTestCode(testCode);
        if (ObjectUtil.isNotEmpty(testPlan)) {
            Date testBegin = testPlan.getTestBegin();
            Date testEnd = testPlan.getTestEnd();
            Date now = new Date();
            if (now.before(testBegin)) {
                return fail("测试还未开始");
            }
            if (now.after(testEnd)) {
                return fail("测试已经结束");
            }
            //获取测试类型
            String type = testPlan.getType();
            boolean flag = false;
            List<Question> questionList = new ArrayList<>();
            switch (type) {
                case "fpa":
                    TesterFpa testerByPhone = testerFpaService.getByPhone(testerVo.getPhone());
                    if (ObjectUtil.isNotEmpty(testerByPhone)) {
                        flag = true;
                    } else {
                        //开始测试，进入到显示所有题目的页面
                        //将所有的测试题放入到session中
                        List<QuestionFpa> questionFpaList = questionFpaService.getAllByStatus();
                        //将 List<QuestionFpa>  转换成List<Question>
                        questionList = BeanUtil.copyToList(questionFpaList, Question.class);
                    }

                    break;
                case "scl":
                    TesterScl byPhoneScl = testerSclService.getByPhone(testerVo.getPhone());
                    if (ObjectUtil.isNotEmpty(byPhoneScl)) {
                        flag = true;
                    } else {
                        //开始测试，进入到显示所有题目的页面
                        //将所有的测试题放入到session中
                        List<QuestionScl> questionSclList = questionSclService.getAllByStatus();
                        //将 List<QuestionFpa>  转换成List<Question>
                        questionList = BeanUtil.copyToList(questionSclList, Question.class);
                    }
                    break;
                case "mht":
                    TesterMht testerMht = testerMhtService.queryByPhone(testerVo.getPhone());
                    if (ObjectUtil.isNotEmpty(testerMht)) {
                        flag = true;
                    } else {
                        //开始测试，进入到显示所有题目的页面
                        //将所有的测试题放入到session中
                        List<QuestionMht> allByStatus = questionMhtService.getAllByStatus();
                        //将 List<QuestionFpa>  转换成List<Question>
                        questionList = BeanUtil.copyToList(allByStatus, Question.class);

                    }

                    break;
                case "sas":
                    TesterSas testerByPhoneSas = testerSasService.getByPhone(testerVo.getPhone());
                    if (ObjectUtil.isNotEmpty(testerByPhoneSas)) {
                        flag = true;
                    } else {
                        //开始测试，进入到显示所有题目的页面
                        //将所有的测试题放入到session中
                        List<QuestionSas> questionSasList = questionSasService.getAllByStatus();
                        //将 List<QuestionSas>  转换成List<Question>
                        questionList = BeanUtil.copyToList(questionSasList, Question.class);
                    }
                    break;
                case "sds":
                    TesterSds testerByPhoneSds = testerSdsService.queryByPhone(testerVo.getPhone());
                    if (ObjectUtil.isNotEmpty(testerByPhoneSds)) {
                        flag = true;
                    } else {
                        //开始测试，进入到显示所有题目的页面
                        //将所有的测试题放入到session中
                        List<QuestionSds> questionSdsList = tblQuestionSdsService.findAllQuestion();
                        //将 List<QuestionSas>  转换成List<Question>
                        questionList = BeanUtil.copyToList(questionSdsList, Question.class);
                    }
                    break;
                default:
                    break;
            }
            if (flag) {
                return fail("手机号已经做过测试");
            }
            testerVo.setTestPlanId(testPlan.getId());
            testerVo.setType(testPlan.getType());
            testerVo.setTestName(testPlan.getTestName());
            session.setAttribute("questionList", questionList);
            session.setAttribute("tester", testerVo);
            session.setAttribute("testName", testPlan.getType());
            return success();
        } else {
            return fail("测试码无效");
        }
    }

    @PostMapping("saveBatchTestResult.do")
    public Result insertBatchTestResult(@RequestBody List<TestResultVo> testResultVoList, HttpSession session) {
        TesterVo tester = (TesterVo) session.getAttribute("tester");
        String type = tester.getType();
        switch (type) {
            case "fpa":
                //1、根据测试类型进行保存测试者的信息  TesterFpa
                TesterFpa testerFpa = new TesterFpa();
                BeanUtil.copyProperties(tester, testerFpa);
                testerFpaService.saveTesterFpa(testerFpa);
                //testerFpa中自动包含主键信息
                //2、根据测试类型进行保存答案
                List<TestResultFpa> testResultFpaList = BeanUtil.copyToList(testResultVoList, TestResultFpa.class);
                //填充测试者的id
                for (TestResultFpa testResultFpa : testResultFpaList) {
                    testResultFpa.setTesterId(testerFpa.getId());
                }
                int insert = testResultFpaService.insertBatch(testResultFpaList);
                if (insert > 0) {
                    String result = this.selectResultFpa(testerFpa.getId());
                    return success("", result);
                }

            case "sas":
                //1、根据测试类型进行保存测试者的信息  TesterFpa
                TesterSas testerSas = new TesterSas();
                BeanUtil.copyProperties(tester, testerSas);
                testerSasService.saveTesterSas(testerSas);
                //testerFpa中自动包含主键信息
                //2、根据测试类型进行保存答案
                List<TestResultSas> testResultSasList = BeanUtil.copyToList(testResultVoList, TestResultSas.class);
                //填充测试者的id
                for (TestResultSas testResultSas : testResultSasList) {
                    testResultSas.setTesterId(testerSas.getId());
                }
                int insertSas = testResultSasService.insertBatch(testResultSasList);
                if (insertSas > 0) {
                    String result = this.selectResult(testerSas.getId());
                    return success("", result);
                }
                break;
            case "sds":

                //1、根据测试类型进行保存测试者的信息  TesterFpa
                TesterSds testerSds = new TesterSds();
                BeanUtil.copyProperties(tester, testerSds);
                testerSds.setCreateTime(new Date());
                testerSdsService.insert(testerSds);

                //testerFpa中自动包含主键信息
                //2、根据测试类型进行保存答案
                List<TestResultSds> testResultSdsList = BeanUtil.copyToList(testResultVoList, TestResultSds.class);
                //填充测试者的id
                for (TestResultSds testResultSds : testResultSdsList) {
                    testResultSds.setTesterId(testerSds.getId());
                }
                testResultSdsService.insertBatch(testResultSdsList);
                String s = selectSdsResult(testerSds.getId());
                return success("", s);

            case "mht":
                TesterMht testerMht = new TesterMht();
                BeanUtil.copyProperties(tester, testerMht);

                TesterMht phone = testerMhtService.queryByPhone(testerMht.getPhone());
                if (ObjectUtil.isEmpty(phone)){
                    testerMhtService.saveTesterMht(testerMht);

                    List<TestResultMht> testResultMhtList = BeanUtil.copyToList(testResultVoList, TestResultMht.class);
                    //填充测试者的id
                    for (TestResultMht testResultMht : testResultMhtList) {
                        testResultMht.setTesterId(testerMht.getId());
                    }
                    session.setAttribute("mhtTesterId", testerMht.getId());
                    testResultMhtService.insertBatch(testResultMhtList);
                    session.setAttribute("errorMsg", "");
                    Integer integer = testerMhtService.queryById(testerMht.getId());
                    if (ObjectUtil.isNotEmpty(integer)) {
                        if (integer > 7) {
                            testerMht.setStatus(0);
                            testerMhtService.modify(testerMht);
                            //return success("", "/views/mht/reportMht.jsp");
                            return success("", "/views/front/mhtError.jsp");
                        }
                    }
                    //return success("", "/views/mht/reportMht.jsp");
                    return success("", "/views/front/allResult.jsp");
                }
                return fail("你已做过测试，请勿重复提交");
            case "scl":
                //1、根据测试类型进行保存测试者的信息  TesterScl
                TesterScl testerScl = new TesterScl();
                BeanUtil.copyProperties(tester, testerScl);
                testerScl.setCreateTime(new Date());
                testerSclService.insert(testerScl);
                //testerScl中自动包含主键信息
                //2、根据测试类型进行保存答案
                List<TestResultScl> testResultSclList = BeanUtil.copyToList(testResultVoList, TestResultScl.class);
                //填充测试者的id
                for (TestResultScl testResultScl : testResultSclList) {
                    testResultScl.setTesterId(testerScl.getId());
                }
                session.setAttribute("sclTesterId", testerScl.getId());
                testResultSclService.insertBatch(testResultSclList);
                //return success("", "/views/front/resultScl.jsp");
                return success("", "/views/front/allResult.jsp");
            default:
                return fail("不识别的测试类型");
        }
        return fail();
    }


    public String selectResultFpa(Integer testerId) {
        ViewTestResultFpa viewFpa = viewTestResultFpaService.getById(testerId);
        int red = Integer.parseInt(viewFpa.getRedCount());
        int yellow = Integer.parseInt(viewFpa.getYellowCount());
        int blue = Integer.parseInt(viewFpa.getBlueCount());
        int green = Integer.parseInt(viewFpa.getGreenCount());
        if (red > yellow && red > blue && red > green) {
            return "/views/front/red.jsp";
        } else if (yellow > red && yellow > blue && yellow > green) {
            return "/views/front/yellow.jsp";
        } else if (blue > red && blue > yellow && blue > green) {
            return "/views/front/blue.jsp";
        } else if (green > red && green > yellow && green > blue) {
            return "/views/front/green.jsp";
        } else {
            return "/views/front/All.jsp";
        }
    }


    public String selectResult(Integer testerId) {
        ViewTestResultSas viewSas = viewTestResultSasService.getById(testerId);
        int forward = viewSas.getForward();
        int inversion = viewSas.getInversion();
        double sum = (forward + inversion) * 1.25;
        if (sum < 50) {
            //return "/views/front/SasNormal.jsp";
            return "/views/front/allResult.jsp";
        } else if (sum >= 50 && sum <= 60) {
            //return "/views/front/SasMild.jsp";
            return "/views/front/allResult.jsp";
        } else if (sum > 60 && sum <= 70) {
            //return "/views/front/SasModerate.jsp";
            return "/views/front/allResult.jsp";
        } else {
            //return "/views/front/SasSevere.jsp";
            return "/views/front/allResult.jsp";
        }

    }

    public String selectSdsResult(Integer testerId) {
        ResultSds viewSds = resultSdsService.queryById(testerId);
        int forward = Integer.parseInt(viewSds.getForward());
        int inversion = Integer.parseInt(viewSds.getInversion());
        double sum = (forward + inversion) * 1.25;
        if (sum < 50) {
            //return "/views/front/SdsNormal.jsp";
            return "/views/front/allResult.jsp";
        } else if (sum >= 50 && sum <= 60) {
            //return "/views/front/SdsMild.jsp";
            return "/views/front/allResult.jsp";
        } else if (sum > 60 && sum <= 70) {
            //return "/views/front/SdsModerate.jsp";
            return "/views/front/allResult.jsp";
        } else {
            //return "/views/front/SdsSevere.jsp";
            return "/views/front/allResult.jsp";
        }

    }

}
