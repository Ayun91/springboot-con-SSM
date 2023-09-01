<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp"%>
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
    #name{
        border: 1px solid black;
    }
    #phone {
        border: 1px solid black;
    }
</style>
<body>
<%--结果详情--%>
<div id="result" style="width: 100%;height: 100%; display: none;">
    <input type="text" id="name" name="name" value="" autocomplete="off" class="layui-input" readonly>
    <input type="text" id="phone" name="phone" value="" autocomplete="off" class="layui-input" readonly>
    <table id="resultTbl"></table>
</div>
<div id="app">
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

    <!--条件查询-->
    <form class="layui-form" action="" style="margin-top: 10px">
        <div class="layui-inline">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="name" placeholder="请输入测试者姓名" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">测试名称</label>
            <%--编辑下拉--%>
            <div class="layui-inline" style="width: 235px;">
                <select placeholder="选择ID" id="cccc" name="testPlanId"></select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">测试结果</label>
            <div class="layui-input-inline">
                <select name="body">
                    <option value="">所有学生</option>
                    <option value="1">正常学生</option>
                    <option value="2">异常学生</option>
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <div class="layui-input-inline">
                <button class="layui-btn" lay-submit lay-filter="formDemo">搜索</button>
                <button type="reset" id="search_reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <%--雷达图--%>
    <div id="lookForm" style="width: 100%;height: 100%; display: none;">
        <!-- 为 ECharts 准备一个定义了宽高的 DOM -->
        <div id="main" style="width: 380px;height:350px;"></div>
    </div>

    <table id="demo" lay-filter="test"></table>
</div>
<script type="text/javascript">

</script>
<script type="text/html" id="toolEventDemo">
    <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="look">查看结果</a>
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="query">详情</a>
    <a class="layui-btn layui-btn-xs" lay-event="return">访谈</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="delete">删除</a>
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
            , url: '${pageContext.request.contextPath}/viewTestResultScl/getAll.do' //数据接口
            , page: true //开启分页
            , limit: 7
            , limits: [3, 4, 5, 6, 7, 8, 10]
            , toolbar: '#bardemo'
            , autoSort: true
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'testerId', title: '测试者Id', width: 110, sort: true}
                , {field: 'name', title: '测试者名称', width: 120, sort: true}
                , {field: 'testPlanId', title: '测试计划ID', width: 120, sort: true}
                , {field: 'body', title: '躯体化', width: 100, sort: true}
                , {field: 'force', title: '强迫', width: 100, sort: true}
                , {field: 'interpersonal', title: '人际关系', width: 110, sort: true}
                , {field: 'depressed', title: '抑郁', width: 100, sort: true}
                , {field: 'anxious', title: '焦虑', width: 100, sort: true}
                , {field: 'hostility', title: '敌对性', width: 100, sort: true}
                , {field: 'terror', title: '恐怖', width: 100, sort: true}
                , {field: 'paranoia', title: '偏执', width: 100, sort: true}
                , {field: 'psychotic', title: '精神病性', width: 110, sort: true}
                , {field: 'sleepDiet', title: '睡眠及饮食', width: 120, sort: true}
                , {field: 'phone', title: '手机号', width: 120, sort: true}
                , {field: 'createTime', title: '测试时间', width: 178, sort: true}
                , {field: 'testName', title: '测试名称', width: 178, sort: true}
                , {title: '操作', fixed: 'right', width: 240, templet: '#toolEventDemo'}
            ]]
        });

        //查询
        form.on('submit(formDemo)', function (data) {
            console.log(data)
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    name: data.field.name
                    , testPlanId: data.field.testPlanId
                    , testName: data.field.testName
                    ,body: data.field.body
                }
            });
            return false;
        });
        $("#search_reset").click(function () {
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    name: ""
                    , testPlanId: ""
                    , testName: ""
                    ,body: ""
                },
                page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
        });
        // 头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'delete':
                    if (data.length === 0) {
                        layer.msg('请选择一行');
                    } else {
                        console.log(data)
                        var ids = [];
                        for (var i = 0; i < data.length; i++) {
                            let id = data[i].testerId
                            ids[i] = id;
                        }
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/viewTestResultScl/deleteResult.do?ids=" + ids,
                                type: "DELETE",
                                success: function (ret) {
                                    ``
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
            console.log(data)
            if (layEvent === 'look') {
                var chartDom = document.getElementById('main');
                var myChart = echarts.init(chartDom);
                var option;
                option = {
                    legend: {
                        data: ['我的测试结果', '参考值']
                    },
                    radar: {
                        // shape: 'circle',
                        indicator: [
                            {name: '躯体化', max: 5},
                            {name: '强迫', max: 5},
                            {name: '人际敏感', max: 5},
                            {name: '抑郁', max: 5},
                            {name: '焦虑', max: 5},
                            {name: '敌对', max: 5},
                            {name: '恐怖', max: 5},
                            {name: '偏执', max: 5},
                            {name: '精神病', max: 5},
                            {name: '睡眠及饮食', max: 5}
                        ]
                    },
                    series: [
                        {
                            name: 'Budget vs spending',
                            type: 'radar',
                            data: [
                                {
                                    value: [data.body,data.force,data.interpersonal,data.depressed,data.anxious,data.hostility,data.terror,data.paranoia,data.psychotic,data.sleepDiet],
                                    name: '我的测试结果'
                                },
                                {
                                    value: [2.43,3.27,3.46,3.13,2.82,3.13,2.52,3.23,2.71,2.33],
                                    name: '参考值'
                                }
                            ]
                        }
                    ]
                };
                option && myChart.setOption(option);

                layer.open({
                    title: '症状自评Scl结果图示',
                    type: 1,
                    content: $('#lookForm'), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    area: ['400px', '400px']
                });
            }else if (layEvent === 'delete') {
                layer.confirm('真的删除么', function () {
                    //去后台删除数据
                    $.ajax({
                        url: "${pageContext.request.contextPath}/viewTestResultScl/deleteTestScl.do",
                        type: "POST",
                        dataType: "JSON",
                        data: {ids: data.testerId},
                        success: function (data) {
                            if (data.code == 0) {
                                //关闭对话框
                                layer.closeAll(); //疯狂模式，关闭所有层
                                //刷新表格数据
                                table.reload('demo');
                            }
                            layer.msg(data.msg);
                        }
                    });
                });
            }else if (layEvent === 'query'){
                $("#name").val(data.name)
                $("#phone").val(data.phone)
                layer.open({
                    title: '心理健康测试结果图示',
                    type: 1,
                    content: $('#result'), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    area: ['600px', '600px']
                });
                //第一个实例
                table.render({
                    elem: '#resultTbl'
                    , height: 500
                    , url: '${pageContext.request.contextPath}/viewTestResultScl/queryResult.do?id=' + data.testerId//数据接口
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
                    "testerId": data.testerId
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
                url: "${pageContext.request.contextPath}/viewTestResultScl/insertReturn.do"
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
        //====================================提交条件查询==================================================
        //添加部门下拉框
        $.ajax({
            url: "${pageContext.request.contextPath}/testPlanScl/getAll.do?page=1&limit=10000",
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
</body>
</html>
