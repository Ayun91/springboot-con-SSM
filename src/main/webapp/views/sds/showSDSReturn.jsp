<%--
  Created by IntelliJ IDEA.
  User: 15890741124
  Date: 2022/8/9
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common.jsp" %>
<html>
<head>
    <title>详细信息</title>
</head>
<body>
<%--查询--%>
<form class="layui-form" action="" style="margin-top: 20px">
    <div class="layui-inline">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block">
            <input type="text" name="testerName" id="name" placeholder="请输入要查询的姓名" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">计划名称</label>
        <div class="layui-input-inline">
            <input type="text" name="testName" id="teatName" placeholder="请输入要查询计划名称" autocomplete="off"
                   class="layui-input">
        </div>
    </div>


    <div class="layui-inline">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
            <button class="layui-btn layui-btn-primary" id="reset" type="reset">重置</button>
        </div>
    </div>
</form>
<%--表格--%>
<table id="demo" lay-filter="test"></table>
<%--头部工具栏--%>
<script type="text/html" id="topbarDemo">
    <a class="layui-btn layui-btn-danger " lay-event="delete"><i class="layui-icon layui-icon-delete"></i>删除</a>
</script>
<%--表格右侧标签--%>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="update">修改</a>
    <a class="layui-btn layui-btn-xs" lay-event="addReturn">再次回访</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="delete">删除</a>
</script>

<%-- 修改表单 根据ID修改问题--%>
<form class="layui-form" action="" lay-filter="updateRecord" id="updateRecord" style="display: none">
    <input name="id" type="hidden">

    <div class="layui-form-item">
        <label class="layui-form-label">回访记录</label>
        <div class="layui-input-inline">
            <textarea name="record"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-inline">
            <input type="text" name="remark" placeholder="请输入备注"
                   autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="updateUserFilter">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
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
            <button id="close" type="button" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>



</body>
<script>

    layui.use(['table', 'form', 'upload', 'jquery'], function () {
        var table = layui.table;
        var form = layui.form;
        var upload = layui.upload;
        var $ = layui.jquery;

        table.render({
            elem: '#demo'
            , height: 550
            , url: '${pageContext.request.contextPath}/viewTestResultSds/getReturn.do'
            , dataType: 'json'
            , page: true //开启分页
            , limit: 10
            , limits: [5, 10,20,50,100]
            , autoSort: true//关闭自动排序
            , toolbar: '#topbarDemo'
            , cols: [[
                {checkbox: 'checkbox', fixed: 'left'}//左侧复选框
                , {field: 'id', title: '回访id', width: 100, sort: true, fixed: 'left'}
                , {field: 'testerId', title: '测试者id', width: 100}
                , {field: 'testerName', title: '测试者姓名', width: 100}
                , {field: 'phone', title: '手机号', width: 100}
                , {field: 'testName', title: '测试计划名称', width: 100}
                , {field: 'returnTime', title: '回访时间', width: 100}
                , {field: 'record', title: '回访记录', width: 150, sort: true}
                , {field: 'remark', title: '备注', width: 150, sort: true}
                , {fixed: 'right', title: '操作', width: 230, align: 'center', toolbar: '#barDemo'}
            ]]
        });


        //触发头部工具栏
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据

            switch (obj.event) {
                case "delete":
                    if (data.length === 0) {
                        layer.msg('请选择一行');
                    } else {
                        //定义一个数组，封装所有的id
                        var ids = [];
                        //循环所有选中的行
                        for (let i = 0; i < data.length; i++) {
                            ids[i] = data[i].id;
                        }
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/viewTestResultSds/deleteReturn.do",
                                data: {id: ids.join(",")},
                                //响应的数据类型
                                dataType: "JSON",
                                type: "POST"
                                //异步请求
                                // async: true,
                                //成功的回调
                                , success: function (data) {
                                    if (data.code == 0) {
                                        layer.closeAll();//关闭所有
                                        //刷新表格数据
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

                        });
                    }
                    break;
                default:
                    break;
            }
        });
        //监听右侧工具栏事件
        table.on('tool(test)', function (obj) {
            var data = obj.data;
            switch (obj.event) {
                case "delete":
                    layer.confirm('真的删除行么', function (index) {
                        $.ajax({
                            url: "${pageContext.request.contextPath}/viewTestResultSds/deleteReturn.do",
                            data: {"id": obj.data.id},
                            //响应的数据类型
                            dataType: "JSON",
                            type: "POST"
                            //异步请求
                            // async: true,
                            //成功的回调
                            , success: function (data) {
                                if (data.code == 0) {
                                    layer.closeAll();
                                    //刷新表格数据
                                    table.reload('demo', {
                                        page: {
                                            curr: 1
                                            //重新从第 1 页开始
                                        }
                                    });
                                }
                                /*  layer.msg(data.msg);*/
                            }
                        });
                    });
                    break;
                case "update":
                    form.val("updateRecord", {
                        "id": data.id
                        , "phone": data.phone
                        ,"record": data.record
                        , "remark": data.remark
                    });
                    layer.open({//弹出修改框
                        type: 1,
                        content: $("#updateRecord"),
                        area: ('400px', '360px')
                    });
                    break;
                case "addReturn":
                    form.val("returnRecord", {
                        "testerId": data.testerId
                        , "testName": data.testName
                        , "testerName": data.testerName
                        , "phone": data.phone
                        ,"record":""
                        , "remark": data.remark
                    });


                    layer.open({//弹出修改框
                        title: '再次回访',
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
        //提交修改页面
        form.on('submit(updateUserFilter)', function (data) {
            //提交表单数据
            $.ajax({
                url: "${pageContext.request.contextPath}/viewTestResultSds/updateReturn.do"
                , data: data.field
                , dataType: "json"
                , type: "POST"
                , success: function (data) {
                    if (data.code == 0) {
                        layer.closeAll();
                        table.reload('demo', {
                            /* page: {
                                 curr: 1
                                 //重新从第 1 页开始
                             }*/
                        });
                    }
                    layer.msg(data.msg);
                }
            });
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });
        //查询问题
        form.on('submit(formDemo)', function (data) {
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    testerName: data.field.testerName
                    , testName: data.field.testName
                }
            });
            return false;
        });


        //重置查询条件
        $("#reset").click(function () {
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    testerName: ""
                    , testName: ""
                },
                page: {
                    curr: 1
                    //重新从第 1 页开始
                },
            });
        });
    });


</script>
</html>
