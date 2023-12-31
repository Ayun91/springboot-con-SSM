<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>答题页面</title>
    <style>
        .top-div {
            padding-top: 100px;
            background-color: rgba(234, 245, 255, 0.96);
        }

        .top-div-d {
            width: 85%;
            padding: 30px 30px 0px 30px;
            margin: 0 auto;
            text-align: center;
            background-color: rgba(255, 255, 255, .7);
        }

        .top-div-h {
            padding: 5px;
            font-weight: bolder
        }

        .top-div-p {
            margin: 5px 0px 0px 0px;
            color: #a9a9aa;
        }

        .mid-div {
            padding: 40px;
            background-color: white;
            /*text-align: center;*/
            margin: 0 auto;
        }

        .mid-list {
            width: 50%;
            padding: 20px;
            border-radius: 8px;
            box-shadow: #cacaca 0px 0px 10px;
            margin: 0 auto;
        }

        .mid-question {
            margin-top: 10px;
            display: none;
        }

        .mid-topic {
            margin: 8px 0;
            color: #41464b;
            font-size: 17px;
        }

        .mid-option {
            margin: 10px 0;
            padding: 5px;
            border-radius: 8px;
            text-align: left;
            color: #41464b;
            background-color: #e2ecf6;
        }

        .bottom-div {
            margin: 0 auto;
            width: 50%;
            padding-top: 10px;
            text-align: center;
        }

        .bottom-btn-left {
            float: left;
        }

        .bottom-btn-right {
            float: right;
        }

        .bottom-submit {
            display: none;
        }

        #id_1 {
            display: block;
        }

        @media screen and (max-device-width: 1000px) {
            .top-div {
                padding-top: 50px;
            }

            .mid-list {
                width: 90%;
            }

            .mid-div {
                padding: 20px;
                /*background-color: white;*/
                /*text-align: center;*/
            }

            .bottom-div {
                width: 90%;
            }
        }

    </style>

</head>
<body>
<!--性格色彩框，边距40，透明白色-->
<div class="top-div">
    <div class="top-div-d">
        <h1 class="top-div-h">${tester.testName}(${testName})</h1>
        <p class="top-div-p">完成测试，获得专业的分析报告</p>
    </div>
</div>
<!--问题大div,上下padding-->
<div class="mid-div">
    <!--  进度条加问题选项  -->
    <div class="mid-list">
        <!--    进度条    -->
        <div class="layui-progress layui-progress-big" lay-showPercent="yes" lay-filter="demo">
            <div class="layui-progress-bar layui-bg-blue" lay-percent="1%"></div>
        </div>
        <!--  问题  -->
        <%--  <input id="testerId" type="hidden" value="${tester}">--%>
        <%--定义长度--%>
        <input id="questionsLen" type="hidden" value="${questionList.size()}">
        <%-- <div th:each="question,loopStatus:${questionList}">--%>
        <c:forEach items="${questionList}" var="question" varStatus="vs">

            <div class="mid-question" id="id_${vs.count}">
                    <%--题目--%>
                <label class="mid-topic">${vs.count}、${question.question}</label>

                <form class="layui-form">


                    <div class="layui-form-item">
                        <c:if test="${not empty question.optionTrue}">
                            <div class="layui-input-block mid-option">
                                <input type="radio" lay-filter="qso"
                                       id="A_${vs.count}" name="${question.id}"
                                       value="${question.optionTrue}" title="是">
                            </div>
                        </c:if>

                        <c:if test="${not empty question.optionFalse}">
                            <div class="layui-input-block mid-option">
                                <input type="radio" lay-filter="qso"
                                       id="A_${vs.count}" name="${question.id}"
                                       value="${question.optionFalse}" title="否">

                            </div>
                        </c:if>

                        <c:if test="${not empty question.optionA}">
                            <div class="layui-input-block mid-option">
                                <input type="radio" lay-filter="qso"
                                       id="A_${vs.count}" name="${question.id}"
                                       value="1" title="${question.optionA}">
                            </div>
                        </c:if>
                        <c:if test="${not empty question.optionB}">
                            <div class="layui-input-block mid-option">
                                <input type="radio" lay-filter="qso"
                                       id="B_${vs.count}" name="${question.id}"
                                       value="2" title="${question.optionB}">
                            </div>
                        </c:if>
                        <c:if test="${not empty question.optionC}">
                            <div class="layui-input-block mid-option">
                                <input type="radio" lay-filter="qso"
                                       id="C_${vs.count}" name="${question.id}"
                                       value="3" title="${question.optionC}">
                            </div>
                        </c:if>
                        <c:if test="${not empty question.optionD}">
                            <div class="layui-input-block mid-option">
                                <input type="radio" lay-filter="qso"
                                       id="D_${vs.count}" name="${question.id}"
                                       value="4" title="${question.optionD}">
                            </div>
                        </c:if>
                        <c:if test="${not empty question.optionE}">
                            <div class="layui-input-block mid-option">
                                <input type="radio" lay-filter="qso"
                                       id="E_${vs.count}" name="${question.id}"
                                       value="5" title="${question.optionE}">
                            </div>
                        </c:if>
                    </div>
                </form>
            </div>
            <%-- </div>--%>
        </c:forEach>
    </div>

    <div class="bottom-div">
        <button id="pre_btn" type="button" class="layui-btn  layui-bg-blue bottom-btn-left">
            <i class="layui-icon layui-icon-left"></i>
        </button>
        <button id="submit_btn" type="submit" class="layui-btn  layui-btn-warm layui-btn-radius bottom-submit">提交
        </button>
        <button id="next_btn" type="button" class="layui-btn  layui-bg-blue bottom-btn-right">
            <i class="layui-icon layui-icon-right"></i>

        </button>
    </div>
</div>


<script>
    layui.use(['layer', 'element', 'form', 'jquery'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            element = layui.element,
            form = layui.form;

        var resultList = [];
        var questionsLen = $("#questionsLen").val();
        var index = 0;

        form.on('radio(qso)', function (data) {
            //定义一个result对象
            var result = new Object();
            //获取测试者id
            /* result.testerId=$("#testerId").val();*/
            //获取测试题id
            result.questionId = data.elem.name;
            //获取答案
            result.answer = data.value;
            //获取题目编号（1-30）
            index = parseInt(data.elem.id.split("_")[1]);
            //添加答案到resultList
            if (index <= resultList.length) {
                resultList[index - 1] = result;
            } else {
                resultList.push(result);
                //保存到本地存储中
            }
            if (resultList.length == questionsLen) {
                $('#submit_btn').show();
            } else {
                if (index != questionsLen) {
                    //隐藏当前的题目
                    $('#id_' + index).hide();
                    //显示下一题目
                    $('#id_' + (index + 1)).show();
                }
            }
            //计算进度条
            element.progress('demo', Math.ceil(index / questionsLen * 100) + '%');
        });

        $('#pre_btn').on('click', function () {
            if (resultList.length != questionsLen) {//没做完时
                if (index > 0) {
                    $('#id_' + (index + 1)).hide();
                    $('#id_' + index).show();
                    index--;
                }
            } else {//做完时
                if (index > 1) {
                    $('#id_' + index).hide();
                    $('#id_' + (index - 1)).show();
                    index--;
                }
            }

        });
        $('#next_btn').on('click', function () {
            if (resultList.length != questionsLen) {//没做完时
                if (index < resultList.length) {
                    index++;
                    $('#id_' + index).hide();
                    $('#id_' + (index + 1)).show();
                }
            } else {//做完时
                if (index < questionsLen) {
                    $('#id_' + index).hide();
                    $('#id_' + (index + 1)).show();
                    index++;
                }
            }
        });
        $('#submit_btn').on('click', function () {
            var resultListJson = JSON.stringify(resultList);
            if (resultList.length == questionsLen) {
                //发送ajax请求到后端
                $.ajax({
                    url: "${pageContext.request.contextPath}/front/saveBatchTestResult.do",
                    type: "POST",
                    dataType: "JSON",
                    contentType: "application/json;charset=UTF-8",
                    data: resultListJson,
                    success: function (ret) {
                        if (ret.code === 0) {
                            window.location.href = "${pageContext.request.contextPath}" + ret.data;
                        } else {
                            layer.msg(ret.msg, {icon: 5});
                        }

                    }
                })
            } else {
                alert("请做完后在提交");
            }
        });
    });
</script>

</body>
</html>
