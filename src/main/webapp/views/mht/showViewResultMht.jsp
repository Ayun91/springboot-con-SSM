<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        #show {
            width: 100%;
            height: 100%;
            /*border: 4px solid cornflowerblue;*/
            margin: auto;

            background: rgb(92, 217, 239);
            font-family: 华文行楷;
            font-size: 30px;
            /*绝对定位也行，但是父也不占位。包含块布局的时候一般父相对  父相子绝*/
        }

        #bb {
            width: 200px;
            height: 80px;
            margin: auto;
            line-height: 80px;
        }

        #result {
            width: 400px;
            height: 80px;
            margin: auto;
            line-height: 80px;

        }
    </style>
</head>
<script type="text/html" id="bardemo">
    <a href="#" class="layui-btn layui-btn-danger" lay-event="delete">删除</a>
</script>
<style>
    #app {
        width: 1319px;
        margin: 0 auto;
    }
</style>
<body>
<div id="app">

    <!--条件查询-->
    <form class="layui-form" action="" style="margin-top: 10px">
        <div class="layui-inline">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="name" placeholder="请输入测试者姓名" class="layui-input">
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">测试计划</label>
            <div class="layui-input-inline">
                <select name="testPlanId" lay-filter="type" id="testPlanId">
                    <%--                    js填充题目类型下拉选项--%>
                </select>
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">测试结果</label>
            <div class="layui-input-inline">
                <select name="studentType" lay-filter="type" id="questionman">
                    <option selected value="1">所有学生</option>
                    <option value="2">正常学生</option>
                    <option value="3">问题学生</option>
                    <option value="4">无效答题</option>
                </select>
            </div>
        </div>


        <div class="layui-inline">
            <div class="layui-input-inline">
                <button class="layui-btn" lay-submit lay-filter="formDemo">搜索</button>
                <button type="reset" id="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <table id="demo" lay-filter="test"></table>
    <%-- 查看结果 --%>
    <div id="show" style="width: 100%;height: 100%; display: none;">
        <div id="bb">MHT测试结果</div>
        <div id="result"></div>
        <div style="width: 100%;height: 350px;" id="shopping"></div>
        <div style="width: 100%;background: rgb(92, 217, 239);" id="explain"></div>
    </div>
    <from style="display: none" id="question-answer">
        <span id="username"></span>
        <span id="phone"></span>
        <table id="demo2" lay-filter="test"></table>
    </from>
</div>
<%-- 添加表单 再次回访 --%>
<form class="layui-form" action="" id="returnRecord" lay-filter="returnRecord" style="display: none">
    <div class="layui-form-item">
        <label class="layui-form-label">测试者id</label>
        <div class="layui-input-inline">
            <input type="text" name="testerId" placeholder="请输入测试者id" readonly
                   autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">测试者姓名</label>
        <div class="layui-input-inline">
            <input type="text" name="testerName" placeholder="请输入测试者姓名" readonly
                   autocomplete="off" class="layui-input">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">手机号</label>
        <div class="layui-input-inline">
            <input type="text" name="phone" placeholder="请输入手机号" readonly
                   autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">计划名称</label>
        <div class="layui-input-inline">
            <input type="text" name="testName" placeholder="请输入参加计划名称" readonly
                   autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">回访记录</label>
        <div class="layui-input-inline">
            <textarea name="record" id="record"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-inline">
            <input type="text" name="remark" id="remark" placeholder="请输入备注"
                   autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="addUserFilter">立即提交</button>
            <button id="close" type="button" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>


<script type="text/html" id="toolEventDemo">
    <a class="layui-btn  layui-btn-warm layui-btn-xs" lay-event="look">查看结果</a>
    <a class="layui-btn  layui-btn-normal layui-btn-xs" lay-event="checkQuestion">详情</a>
    <a class="layui-btn layui-btn-xs" lay-event="return">访谈</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>

    layui.use(['table', 'form', 'jquery'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;

        //第一个实例
        table.render({
            elem: '#demo'
            , height: 541
            , url: '${pageContext.request.contextPath}/viewsTestResultMht/getAll.do' //数据接口
            // , data:{studentType: 1}
            , page: true //开启分页
            , limit: 7
            , limits: [3, 4, 5, 6, 7, 8, 10]
            , toolbar: '#bardemo'
            , autoSort: true
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'testerId', title: '测试者Id', width: 110, sort: true}
                , {field: 'name', title: '测试者名称', width: 130, sort: true}
                , {field: 'phone', title: '手机号', width: 120, sort: true}
                , {field: 'testName', title: '测试计划名称', width: 100, sort: true}
                , {
                    field: 'status', title: '状态', width: 100, sort: true
                    , templet: function (d) {
                        //得到当前行数据，并拼接成自定义模板
                        if (d.status == '0') {
                            return '<span style="color:#c60000">无效答题</span>'
                        } else {
                            return '<span style="color:#8CBE6F">有效答题</span>'
                        }
                    }
                }
                , {field: 'effect', title: '效果评估', width: 100, sort: true}
                , {field: 'allscore', title: '总分', width: 100, sort: true}
                , {field: 'person', title: '对人焦虑', width: 120, sort: true}
                , {field: 'lonely', title: '孤独焦虑', width: 100, sort: true}
                , {field: 'blame', title: '自责焦虑', width: 100, sort: true}
                , {field: 'allergy', title: '过敏焦虑', width: 100, sort: true}
                , {field: 'body', title: '身体焦虑', width: 100, sort: true}
                , {field: 'terror', title: '恐怖焦虑', width: 100, sort: true}
                , {field: 'impulse', title: '冲动焦虑', width: 100, sort: true}
                , {field: 'learnAnxiety', title: '学习焦虑', width: 100, sort: true}
                , {field: 'createTime', title: '提交时间', width: 178, sort: true}
                , {title: '操作', fixed: 'right', width: 250, templet: '#toolEventDemo'}
            ]]
        });


        //查询测试计划id
        $.ajax({
            url: "${pageContext.request.contextPath}/viewsTestResultMht/getPlanId.do",
            type: "post",
            dataType: "json",
            success: function (data) {
                //将dept表中的数据添加到下拉列表中去
                if (data.code === 0) {
                    var htmlStr = "<option value='' >选择测试计划<option>";
                    for (let i = 0; i < data.data.length; i++) {
                        htmlStr += "<option value = " + data.data[i].id + ">" + data.data[i].test_name + "<option>"
                    }
                    $("#testPlanId").html(htmlStr);
                    layui.use('form', function () {
                        var form = layui.form;
                        form.render('select');
                    });
                }
            }
        });

        //查询
        form.on('submit(formDemo)', function (data) {
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    name: data.field.name
                    , testPlanId: data.field.testPlanId
                    , studentType: data.field.studentType
                }
            });
            return false;
        });

        // 头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'delete':
                    if (data.length === 0) {
                        layer.msg('请选择一行');
                        console.log('执行到这了1')
                    } else {
                        console.log(data)
                        var ids = [];
                        for (var i = 0; i < data.length; i++) {
                            let id = data[i].testerId
                            ids[i] = id;
                        }
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/viewsTestResultMht/deleteResult.do?ids=" + ids,
                                type: "DELETE",
                                success: function (ret) {
                                    if (ret.code == 0) {
                                        layer.closeAll();//关闭对话框
                                        table.reload('demo', {
                                            page: {
                                                curr: 1
                                            }
                                        });
                                    }
                                    layer.msg(ret.msg);
                                }
                            });
                        })
                    }
            }
        });
        // 单元格工具事件
        table.on('tool(test)', function (obj) { // 注：test 是 table 原始标签的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的 DOM 对象（如果有的话）
            switch (layEvent) {
                case "look":
                    //layer.msg('查看操作');
                    //弹出层
                    layer.open({
                        title: 'MHT测试结果图示',
                        type: 1,
                        content: $('#show'), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                        area: ['600px', '600px']
                    });

                    console.log(obj.data)
                    // var effect = obj.data.effect;//效果评估
                    var allscore = obj.data.allscore;//总分
                    var learnAnxiety = obj.data.learnAnxiety;//学习焦虑
                    var person = obj.data.person;//对人焦虑
                    var lonely = obj.data.lonely;//孤独焦虑
                    var blame = obj.data.blame;//自责
                    var allergy = obj.data.allergy;//过敏焦虑
                    var body = obj.data.body;//身体焦虑
                    var terror = obj.data.terror;//恐怖焦虑
                    var impulse = obj.data.impulse;//冲动焦虑
                    var myChart = echarts.init(document.getElementById('shopping'));
                    var option = {

                        title: {
                            text: 'MHT心理测试'
                        },
                        legend: {
                            data: ['你的成绩', '标准得分']
                        },
                        radar: {
                            // shape: 'circle',
                            indicator: [
                                {name: '学习焦虑', max: 15},
                                {name: '对人焦虑', max: 10},
                                {name: '孤独倾向', max: 10},
                                {name: '自责倾向', max: 10},
                                {name: '过敏倾向', max: 10},
                                {name: '身体症状', max: 15},
                                {name: '恐怖倾向', max: 10},
                                {name: '冲动倾向', max: 10}
                            ],
                            // center: ['75%', '50%'],
                            radius: 120,
                            axisName: {
                                color: '#fff',
                                backgroundColor: '#666',
                                borderRadius: 3,
                                padding: [3, 5]
                            }
                        },
                        series: [
                            {
                                name: 'Budget vs spending',
                                type: 'radar',//雷达图类型
                                data: [
                                    {
                                        value: [learnAnxiety, person, lonely, blame, allergy, body, terror, impulse],
                                        name: '你的成绩',
                                        lineStyle: {
                                            type: 'dashed'
                                        },

                                        label: {
                                            show: true,
                                            formatter: function (params) {
                                                return params.value;
                                            }
                                        }
                                    },
                                    {
                                        value: [8, 8, 8, 8, 8, 8, 8, 8],
                                        name: '标准得分',
                                        label: {
                                            show: true,
                                            formatter: function (params) {
                                                return params.value;
                                            }
                                        }
                                    }
                                ]
                            }
                        ]
                    };
                    myChart.setOption(option);

                    var htmlStr = "";
                    if (body > 8) {
                        htmlStr += "<div><h3 align='center'>身体症状</h3>&nbsp;&nbsp;&nbsp;&nbsp;你在极度焦虑的时候，会出现呕吐失眠、小便失禁等明显症状。这类被试必须接受为他制定的有针对性的特别指导计划。 </div>"
                    }
                    if (learnAnxiety > 8) {
                        htmlStr += "<div><h3 align='center'>学习焦虑</h3>&nbsp;&nbsp;&nbsp;&nbsp;你对考试怀有恐惧心理，无法安心学习，十分关心考试分数。这类被试必须接受为他制定的有针对性的特别指导计划。</div>"
                    }
                    if (person > 8) {
                        htmlStr += "<div><h3 align='center'>对人焦虑</h3>&nbsp;&nbsp;&nbsp;&nbsp;你过分注重自己的形象，害怕与人交往，退缩。这类被试必须接受为他制定的有针对性的特别指导计划。</div>"
                    }
                    if (lonely > 8) {
                        htmlStr += "<div><h3 align='center'>孤独倾向</h3>&nbsp;&nbsp;&nbsp;&nbsp;你孤独、抑郁不善与人交往，自我封闭。这类被试必须接受为他制定的有针对性的特别指导计划。</div>"
                    }
                    if (blame > 8) {
                        htmlStr += "<div><h3 align='center'>自责倾向</h3>&nbsp;&nbsp;&nbsp;&nbsp;你自卑、常怀疑自己的能力、常将失败、过失归咎于自己。这类被试必须接受为他制定的有针对性的特别指导计划。 </div>"
                    }
                    if (allergy > 8) {
                        htmlStr += "<div><h3 align='center'>过敏倾向</h3>&nbsp;&nbsp;&nbsp;&nbsp;你过于敏感，容易为一些小事而烦恼。这类被试必须接受为他制定的有针对性的特别指导计划。</div>"
                    }
                    if (terror > 8) {
                        htmlStr += "<div><h3 align='center'>恐怖倾向</h3>&nbsp;&nbsp;&nbsp;&nbsp;你对某些事物，如黑暗等，有较严重的恐惧感。这类被试必须接受为他制定的有针对性的特别指导计划。</div>"
                    }
                    if (impulse > 8) {
                        htmlStr += "<div><h3 align='center'>冲动倾向</h3>&nbsp;&nbsp;&nbsp;&nbsp;你十分冲动，自制力差。这类被试必须接受为他制定的有针对性的特别指导划。 </div>"
                    }
                    if (allscore > 65) {
                        htmlStr += "<div style='padding-bottom: 100px'><h3 align='center'>总结</h3>你的总成绩在65分以上，说明你存在一定的心理障碍这种人在日常生活中有不适应行为，有的可能表现为攻击和暴力行为等，因而需要制定特别的个人指导计划。</div>"

                    }

                    $("#explain").html(htmlStr);

                    break;
                case "checkQuestion":
                    $("#username").html(data.name);
                    $("#phone").html(data.phone);
                    table.render({
                        elem: '#demo2'
                        ,
                        height: 500
                        ,
                        url: '${pageContext.request.contextPath}/viewsTestResultMht/getQuestionMHT.do?testerId=' + data.testerId
                        ,
                        dataType: 'json'
                        ,
                        page: true //开启分页
                        ,
                        limit: 10
                        ,
                        limits: [5, 10, 20, 50, 100]
                        ,
                        autoSort: true//关闭自动排序
                        ,
                        cols: [[
                            {checkbox: 'checkbox', fixed: 'left'}//左侧复选框
                            , {field: 'id', title: '问题id', width: 100, sort: true, fixed: 'left'}
                            , {field: 'question', title: '问题', width: 100}
                            , {
                                field: 'answer', title: '答案', width: 150, sort: true,
                                templet: function (d) {
                                    if (d.answer == 1) {
                                        return "<span>是</span>";
                                    } else {
                                        return "<span >否</span>";
                                    }
                                }
                            }
                            , {field: 'dictionary_name', title: '题目类型', width: 150, sort: true}
                        ]]
                    });
                    layer.open({//弹出修改框
                        title: '查看详情',
                        type: 1,
                        content: $("#question-answer"),
                        area: ('600px', '600px')
                    });

                    break;

                case "return":
                    form.val("returnRecord", {
                        "testerId": data.testerId
                        , "testName": data.testName
                        , "testerName": data.name
                        , "phone": data.phone
                        , "record": ""
                        , "remark": data.remark
                    });


                    layer.open({//弹出修改框
                        title: '回访',
                        type: 1,
                        content: $("#returnRecord"),
                        area: ('400px', '360px')
                    });
                    break;
                default:
                    break;
            }

        });
        form.on('submit(addUserFilter)', function (data) {
            $.ajax({
                url: "${pageContext.request.contextPath}/viewsTestResultMht/insertReturn.do"
                , data: data.field
                , dataType: "json"
                , type: "POST",
                success: function (data) {
                    if (data.code == 0) {
                        layer.closeAll();
                        table.reload('demo', {
                            page: {
                                curr: 1
                                //重新从第 1 页开始
                            }
                        });
                    }
                    layer.msg(data.msg);
                }
            });
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });
        $("#close").click(function (index) {
            $("#record").val("")
            $("#remark").val("")
        })
    })
</script>
</body>
</html>
