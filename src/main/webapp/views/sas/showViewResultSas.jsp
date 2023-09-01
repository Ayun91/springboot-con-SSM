<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

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
<div id="view" style="display: none">
    <input type="text" id="name" name="name" value="" autocomplete="off" class="layui-input" readonly>
    <input type="text" id="phone" name="phone" value="" autocomplete="off" class="layui-input" readonly>
    <table id="demo1" lay-filter="test"></table>
</div>
<%--头部工具栏--%>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger " lay-event="delete"><i class="layui-icon layui-icon-delete"></i>删除</a>
</script>
<%--行内工具栏--%>
<script type="text/html" id="rowBarDemo">
    <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="check">查看结果</a>
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="viewDetails">详情</a>
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
        <label class="layui-form-label">测试计划</label>
        <%--编辑下拉--%>
        <div class="layui-inline" style="width: 235px;">
            <select  id="cccc" name="testPlanId"></select>
        </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">测试结果</label>
        <div class="layui-input-inline">
            <select  id="student" name="studentType">
                <option value="1" selected>所有学生</option>
                <option value="2">正常学生</option>
                <option value="3">问题学生</option>
            </select>
        </div>
    </div>
    <div class="layui-inline">
        <div class="layui-input-inline">
            <button class="layui-btn" lay-submit lay-filter="selectFormfilter">查询</button>
            <button type="reset" class="layui-btn layui-btn-primary" id="reset">重置</button>
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
<%--饼图--%>
<div id="show" style="width: 100%;height: 100%; display: none;">
    <div id="bb">SAS测试结果</div>
    <div style="width: 100%;height: 300px;" id="shopping"></div>
    <div id="result" style="text-align: center; font-size: 40px"></div>
</div>
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

<%--数据表格--%>
<table id="demo" lay-filter="test"></table>
</body>
<script>
    layui.use(['table', 'form', 'jquery'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;

        //第一个实例
        table.render({
            elem: '#demo'
            , height: 541
            , url: '${pageContext.request.contextPath}/viewTestResultSas/getAll.do' //数据接口
            , page: true //开启分页
            , limit: 7
            , limits: [3, 4, 5, 6, 7, 8, 10]
            , toolbar: '#bardemo'
            , autoSort: true
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'id', title: 'ID', width: 140, sort: true}
                , {field: 'name', title: '姓名', width: 150}
                , {field: 'phone', title: '电话', width: 160}
                , {field: 'createTime', title: '测试时间', width: 180}
                , {field: 'forward', title: '正向得分', width: 150, sort: true,hide: true}
                , {field: 'inversion', title: '反向得分', width: 150, sort: true,hide: true}
                , {field: 'score', title: '总分', width: 150, sort: true}
                , {field: 'degree', title: '学生状态', width: 150, sort: true
                    ,templet: function(d){
                        //得到当前行数据，并拼接成自定义模板
                        if (d.degree === '正常' ) {
                            return '<span style="color:#8CBE6F">正常</span>'
                        } else {
                            return '<span style="color:#c60000">焦虑</span>'
                        }
                    }
                }
                , {field: 'testPlanId', title: '测试计划ID', width: 150, sort: true, hide:true}
                , {field: 'testName', title: '测试计划', width: 150, sort: true}
                , {fixed: 'right', title: '操作', width: 240, align: 'center', toolbar: '#rowBarDemo'}
            ]]
        });
        //查询
        form.on('submit(selectFormfilter)', function (data) {
            table.reload('demo', {
                where: {
                    name: data.field.name,
                    testPlanId: data.field.testPlanId,
                    studentType: data.field.studentType
                }
                , page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });

        //重置
        $("#reset").click(function () {
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    name: "", //第一个查询条件
                    testPlanId: "",
                    studentType: ""
                },
                page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
        });
        /*
        *
        * 行内工具栏
        * */
        //监听行工具事件
        table.on('tool(test)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'check') {
                //弹出层
                layer.open({
                    title: '焦虑测试结果图示',
                    type: 1,
                    content: $('#show'), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    area: ['600px', '600px']
                });
                var myChart = echarts.init(document.getElementById('shopping'));
                var forward = data.forward
                var inversion = data.inversion
                var score = (inversion + forward) * 1.25;
                var string = "";
                if (score <= 50) {
                    string = "不焦虑"
                }
                if (score <= 60 && score > 50) {
                    string = "轻微焦虑"
                }
                if (score <= 70 && score > 60) {
                    string = "中度焦虑"
                }
                if (score > 70) {
                    string = "重度焦虑"
                }
                $("#result").html(string)
                var option = {
                    title: {
                        text: 'SAS焦虑测试',
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
                            name: 'SAS焦虑占比',
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
                myChart.setOption(option);
            } else if (obj.event === 'del') {
                layer.confirm('您真的删除行么', function (index) {
                    // 删除用户信息
                    $.ajax({
                        url: '${pageContext.request.contextPath}/viewTestResultSas/deleteResultSas.do?ids='+data.id,
                        type: 'DELETE',
                        dataType: 'JSON',
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
            } else if (layEvent === 'viewDetails') {
                var name = data.name;
                var phone = data.phone;
                $("#name").val(name);
                $("#phone").val(phone);
                table.render({
                    elem: '#demo1'
                    , height: 500
                    , url: '${pageContext.request.contextPath}/viewTestResultSas/queryDetails.do?id='+data.id //数据接口
                    , page: true //开启分页
                    , limit: 10
                    , limits: [5, 10, 15, 20, 25, 30, 100]
                    , autoSort: false
                    , cols: [[ //表头
                        {field: 'id', title: 'Id', width: 60, sort: true}
                        , {field: 'question', title: '题目', width: 300}
                        , {field: 'result', title: '所选答案', width: 100}
                        , {field: 'dictionaryName', title: '题目类型', width: 120}
                    ]]
                })
                //弹出层
                layer.open({
                    title: '焦虑测试结果图示',
                    type: 1,
                    content: $('#view'), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    area: ['600px', '600px']
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
                url: "${pageContext.request.contextPath}/viewTestResultSas/insertReturn.do"
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
                                url: "${pageContext.request.contextPath}/viewTestResultSas/deleteResultSas.do?ids="+idList,
                                type: "DELETE",
                                dataType: "JSON",
                                success: function (ret) {
                                    if (ret.code == 0) {
                                        //关闭对话框
                                        layer.closeAll(); //疯狂模式，关闭所有层
                                        //刷新表格数据
                                        table.reload('demo', {
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
        //填充测试计划下拉框
        $.ajax({
            url: "${pageContext.request.contextPath}/tblTestPlanSas/getAll.do",
            type: "GET",
            data:{page:1,limit: 10000},
            dataType: "JSON",
            success: function (ret) {
                if (ret.code == 0) {
                    var htmlStr = "<option value=''>请选择测试计划</option>";
                    for (let i = 0; i < ret.data.length; i++) {
                        htmlStr += "<option value=" + ret.data[i].id + ">" + ret.data[i].testName + "</option>"
                    }
                    $("#cccc").html(htmlStr);
                    //重新渲染表单
                    layui.use('form', function () {
                        var form = layui.form;
                        form.render('select');
                    })
                }
            }
        });
    })
</script>
</html>
