<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

</head>
<script type="text/html" id="bardemo">
    <a href="#" class="layui-btn layui-btn-normal" lay-event="add"><i class="layui-icon layui-icon-addition"
                                                                      style="font-size: 18px; color: #FFFFFF;"></i>添加</a>
    <a href="#" class="layui-btn layui-btn-danger" lay-event="delete"><i class="layui-icon layui-icon-delete"
                                                                         style="font-size: 18px; color: #FFFFFF;"></i>删除</a>
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
            <label class="layui-form-label">登录名</label>
            <div class="layui-input-inline">
                <input type="text" name="loginName" placeholder="请输入登录名" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">类名</label>
            <div class="layui-input-inline">
                <input type="text" name="className" placeholder="请输入类名" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">方法名</label>
            <div class="layui-input-inline">
                <input type="text" name="methodName" placeholder="请输入方法名" class="layui-input">
            </div>
        </div>

        <div class="layui-inline">
            <div class="layui-input-inline">
                <button class="layui-btn" lay-submit lay-filter="formDemo"><i class="layui-icon layui-icon-search"
                                                                              style="font-size: 30px; color: #fff;"></i>搜索
                </button>
                <button type="reset" id="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <table id="demo" lay-filter="test"></table>


</div>
<script>

    layui.use(['table', 'form', 'jquery', 'util', 'upload'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;
        var util = layui.util;
        var upload = layui.upload;

        //渲染表格
        table.render({
            elem: '#demo'
            , height: 541
            , url: '${pageContext.request.contextPath}/log/getAllLog.do' //数据接口
            , data: {"page": "", "limit": ""}
            , page: true //开启分页
            , limit: 10
            , limits: [5, 8,10,12,20]
            , autoSort: true
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'id', title: 'ID', width: 70, sort: true}
                , {field: 'loginName', title: '登录名', width: 100, sort: true}
                , {field: 'userName', title: '用户名', width: 90, sort: true}
                , {field: 'ip', title: 'IP', width: 120, sort: true}
                , {field: 'className', title: '类名', width: 190, sort: true}
                , {field: 'methodName', title: '方法名', width: 150, sort: true}
                , {field: 'params', title: '参数', width: 180, sort: true}
                , {field: 'createTime', title: '创建时间', width: 160, sort: true}
                , {field: 'result', title: '操作结果', width: 200, sort: true}
            ]]
        });

        //查询
        form.on('submit(formDemo)', function (data) {
            console.log(data)
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    loginName: data.field.loginName
                    , methodName: data.field.methodName
                    , className: data.field.className
                }
            });
            return false;
        });

        // 头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'add':
                    layer.open({
                        type: 1,
                        content: $('#addUserForm') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                        , area: ['500px', '400px']
                    });
                    break;
                case 'delete':
                    if (data.length === 0) {
                        layer.msg('请选择一行');
                    } else {
                        var ids = [];
                        for (var i = 0; i < data.length; i++) {
                            let id = data[i].id;
                            ids[i] = id;
                        }
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/questionFpa/delete.do?ids=" + ids,
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
    })
</script>
</body>
</html>
