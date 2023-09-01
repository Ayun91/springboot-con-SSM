<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp" %>
<html>
<head>
    <title>SDS测试结果</title>
    <%-- 优化checkbox复选框   --%>
    <style>
        .layui-table-cell .layui-form-checkbox[lay-skin="primary"] {
            top: 50%;
            transform: translateY(-50%);
        }

        #input {
            width: 160px;
            height: 160px;
        }
    </style>
</head>
<body>
<%--结果详情--%>
<div id="result" style="display: none;">
    <input type="text" id="name" name="name" value="" autocomplete="off" class="layui-input" readonly>
    <input type="text" id="phone" name="phone" value="" autocomplete="off" class="layui-input" readonly>
    <table id="resultTbl"></table>
</div>
<%--头部工具栏--%>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger " lay-event="delete"><i class="layui-icon layui-icon-delete"></i>删除</a>
</script>
<%--行内工具栏--%>
<script type="text/html" id="rowBarDemo">
    <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="look">查看结果</a>
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="query">详情</a>
    <a class="layui-btn layui-btn-xs" lay-event="return">访谈</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<%--模糊查询--%>
<form class="layui-form" action="" style="margin-top: 10px">
    <div class="layui-inline">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-inline">
            <input type="text" name="name" placeholder="请输入姓名" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">测试名称</label>
        <%--编辑下拉--%>
        <div class="layui-inline" style="width: 235px;">
            <select placeholder="请选择测试名称" id="cccc" name="testPlanId"></select>
        </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">测试结果</label>
        <%--编辑下拉--%>
        <div class="layui-inline" style="width: 235px;">
            <select name="forward">
                <option value="">所有学生</option>
                <option value="1">正常学生</option>
                <option value="2">异常学生</option>
            </select>
        </div>
    </div>
    <div class="layui-inline">
        <div class="layui-input-inline">
            <button class="layui-btn" lay-submit lay-filter="formDemo">查询</button>
            <button type="reset" class="layui-btn layui-btn-primary" id="search_reset">重置</button>
        </div>
    </div>
</form>
<style>
    #show {
        margin: auto;
        font-family: 华文行楷;
        font-size: 20px;
        /*绝对定位也行，但是父也不占位。包含块布局的时候一般父相对  父相子绝*/
    }

    #bb {
        text-align: center;
        height: 80px;
        margin: auto;
        line-height: 80px;
    }

</style>
<!--类型-->
<script type="text/html" id="type">
    {{# if (d.score <=53){}}
    <span style="color: #8CBE6F">正常</span>
    {{# } else { }}
    <span style="color: #c60000">抑郁</span>
    {{# } }}

</script>
<%--饼图--%>
<div id="show" style="width: 100%;height: 100%; display: none;">
    <div id="bb">SDS测试结果</div>
    <div style="width: 550px;height: 350px;" id="shopping"></div>
    <div id="results" style="text-align: center; font-size: 40px"></div>
</div>

<%--数据表格--%>
<table id="demo" lay-filter="test"></table>


<%-- 添加表单 再次回访 --%>
<form class="layui-form" action="" id="returnRecord"  lay-filter="returnRecord"  style="display: none">
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
            <button  id="close" type="button"  class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

</body>
<script>
    layui.use(['table', 'jquery', 'form'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;

        //第一个实例
        var myTable=table.render({
            elem: '#demo'
            , height: 550
            , url: '${pageContext.request.contextPath}/viewTestResultSds/queryAllResultSds.do' //数据接口
            , page: true //开启分页
            , limit: 10
            , limits: [5, 10, 15, 20, 25, 30, 50, 100]
            , toolbar: '#barDemo'
            , cols: [
                [ //表头
                    {type: 'checkbox', fixed: 'left'}
                    , {field: 'id', title: 'ID', width: 120, sort: true}
                    , {field: 'name', title: '姓名', width: 150}
                    , {field: 'phone', title: '电话', width: 180}
                    , {field: 'createTime', title: '测试时间', width: 180}
                    , {field: 'forward', title: '正向得分', width: 120, sort: true,hide: true}
                    , {field: 'inversion', title: '反向得分', width: 120, sort: true,hide: true}
                    , {field: 'score', title: '总得分', width: 130, sort: true}
                    , {field: 'types', title: '学生状态', width: 130, sort: true, toolbar: "#type"}
                    , {field: 'testPlanId', title: '测试计划ID', width: 120, sort: true,hide: true}
                    , {field: 'testName', title: '测试名称', width: 130, sort: true}
                    , {fixed: 'right', title: '操作', width: 250, align: 'right', toolbar: '#rowBarDemo'}
                ]
            ],
        });
        /*
        *
        * 行内工具栏
        * */
        //监听行工具事件
        table.on('tool(test)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                //console.log(data)
                , layEvent = obj.event; //获得 lay-event 对应的值
            console.log(layEvent); //
            if (layEvent === 'look') {
                //layer.msg('查看操作');
                //弹出层
                var forward = data.forward * 1.25
                var inversion = data.inversion * 1.25
                var myChart = echarts.init(document.getElementById('shopping'));
                var score = inversion + forward;
                var string = "";
                var option;
                if (score < 50) {
                    string = "您的测试结果为无抑郁"
                } else if (score <= 60) {
                    string = "您的测试结果为轻微至轻度抑郁"
                } else if (score <= 70) {
                    string = "您的测试结果为中至重度"
                } else if (score > 70) {
                    string = "您的测试结果为重度抑郁"
                }
                $("#results").html(string)
                option = {
                    title: {
                        text: 'Sds抑郁测试',
                        left: 'center'
                    },
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    series: [
                        {
                            name: 'SDS性格占比',
                            type: 'pie',
                            radius: '70%',
                            data: [
                                {value: forward, name: '正向题得分', itemStyle: {color: '#c51313'}},
                                {value: inversion, name: '反向题得分', itemStyle: {color: '#1061ba'}},
                            ],
                            emphasis: {
                                itemStyle: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                option && myChart.setOption(option);

                layer.open({
                    title: '抑郁测试结果图示',
                    type: 1,
                    content: $('#show'), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    area: ['600px', '600px']
                });
            } else if (layEvent === 'del') {
                layer.confirm('您真的删除行么', function (index) {
                    // 删除用户信息
                    $.ajax({
                        url: '${pageContext.request.contextPath}/viewTestResultSds/deleteResultSds.do',
                        type: 'POST',
                        dataType: 'JSON',
                        data: {testerId: data.id},
                        success: function (data) {
                            if (data.code == 0) {
                                // 关闭对话框
                                layer.closeAll();
                                // 刷新表格数据
                                table.reload('demo');
                            }
                            layer.msg(data.msg);
                        }
                    });
                });
            } else if (layEvent === 'query') {
                $("#name").val(data.name)
                $("#phone").val(data.phone)
                layer.open({
                    title: '抑郁测试结果图示',
                    type: 1,
                    content: $('#result'), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    area: ['600px', '600px']
                });
                //第一个实例
                table.render({
                    elem: '#resultTbl'
                    , height: 500
                    , url: '${pageContext.request.contextPath}/viewTestResultSds/queryResults.do?id=' + data.id//数据接口
                    , page: true //开启分页
                    , autoSort: false
                    , cols: [[ //表头
                        {type: 'checkbox', fixed: 'left', align: 'center'}
                        , {field: 'id', title: 'Id', width: 60, sort: true}
                        , {field: 'question', title: '问题', width: 280}
                        , {field: 'result', title: '答案', width: 280}
                    ]]
                });
            }else if(layEvent === 'return'){
                form.val("returnRecord", {
                    "testerId": data.id
                    , "testName": data.testName
                    , "testerName": data.name
                    , "phone": data.phone
                    ,"record":""
                    , "remark": data.remark
                });


                layer.open({//弹出修改框
                    title: '回访',
                    type: 1,
                    content: $("#returnRecord"),
                    area: ('400px', '360px')
                });
            }
        });

        form.on('submit(addUserFilter)', function (data) {
            $.ajax({
                url: "${pageContext.request.contextPath}/viewTestResultSds/insertReturn.do"
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
        $("#close").click(function(index){
            $("#record").val("")
            $("#remark").val("")
        })

        form.on('submit(formDemo)', function (data) {
            console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
            console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
            console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    testPlanId: data.field.testPlanId //排序字段
                    , name: data.field.name //排序方式
                    ,forward:data.field.forward
                }
            });
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });
        $("#search_reset").click(function () {
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    testPlanId: ""// 第一个查询条件
                    ,name:""//第二个查询条件
                    ,forward:""
                },
                page: {
                    curr: 1 //重新从第 1 页开始
                },
            });
        })
        //监听头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'delete':
                    if (data.length === 0) {
                        layer.msg('请选择一行');
                    } else {
                        layer.confirm('真的删除选中的行么', function (index) {
                            //obj.del(); //删除对应行（tr）的DOM结构
                            //删除数据库中的数据
                            var idList = [];
                            //遍历数组data，抽取所有的id
                            for (let i = 0; i < data.length; i++) {
                                idList[i] = (data[i].id);
                            }
                            $.ajax({
                                url: "${pageContext.request.contextPath}/viewTestResultSds/deleteResultSds.do",
                                type: "POST",
                                dataType: "JSON",
                                data: {testerId: idList.join(",")},
                                success: function (ret) {
                                    if (ret.code == 0) {
                                        //刷新表格数据
                                        myTable.reload({
                                            page: {
                                                curr: 1 //重新从第 1 页开始
                                            }
                                        });
                                        layer.msg(ret.msg, {icon: 6});
                                    } else {
                                        layer.msg(ret.msg, {icon: 5});
                                    }
                                }
                            })
                            layer.close(index);
                            //向服务端发送删除指令
                        });
                    }
                    break;
            }
        })
        //====================================提交条件查询==================================================
        //添加部门下拉框
        $.ajax({
            url: "${pageContext.request.contextPath}/tblTestPlanSds/queryByPage.do?page=1&limit=10000",
            type: "POST",
            dataType: "JSON",
            success: function (ret) {
                if (ret.code == 0) {
                    //console.log(ret)
                    //<option value="0">写作</option>
                    var htmlStr = "<option value=''>请选择测试名称</option>";
                    for (let i = 0; i < ret.data.length; i++) {
                        htmlStr += "<option value=" + ret.data[i].id + "> " + ret.data[i].testName + "</option>"
                    }
                    // var htmlStr="<option value='男'>男</option>"
                    // htmlStr=htmlStr+"<option value='女'>女</option>"
                    //console.log(htmlStr)
                    $("#cccc").html(htmlStr);
                    //重新渲染表单
                    layui.use('form', function () {
                        form.render('select');
                    })
                }
            }
        });
    })
</script>
</html>
