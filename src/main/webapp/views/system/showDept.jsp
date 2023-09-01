<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<script type="text/html" id="bardemo">
    <a href="#" class="layui-btn layui-btn-normal" lay-event="add">添加</a>
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

    <!--添加-->
    <form class="layui-form" action="" id="addUserForm" style="display: none" enctype="multipart/form-data">

        <div class="layui-form-item">
            <label class="layui-form-label">部门名称</label>
            <div class="layui-input-inline">
                <input type="text" name="deptName" required lay-verify="required"
                       placeholder="请输入部门名称" autocomplete="off"
                       class="layui-input checkName"><span class="msgSpan" style="color: #eb7350"></span>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">排序</label>
            <div class="layui-input-inline">
                <input type="text" name="orderNum" required lay-verify="required"
                       placeholder="排序" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">是否启用</label>
            <div class="layui-input-block">
                <input type="checkbox" name="status" checked value="1" lay-skin="switch">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn checkAdd" lay-submit lay-filter="addDept">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <!--修改-->
    <form class="layui-form" action="" id="updateForm" lay-filter="updateForm" style="display: none">
        <!--隐藏域提交id-->
        <input type="hidden" name="deptId"/>

        <div class="layui-form-item">
            <label class="layui-form-label">部门名称</label>
            <div class="layui-input-inline">
                <input type="text" name="deptName" required lay-verify="required"
                       placeholder="请输入部门名称" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">排序</label>
            <div class="layui-input-inline">
                <input type="text" name="orderNum" required lay-verify="required"
                       placeholder="排序" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">是否启用</label>
            <div class="layui-input-block" id="updateStatus">
                <%--    js中拼接HTML--%>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="update">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <!--条件查询-->
    <form class="layui-form" action="" style="margin-top: 10px">
        <div class="layui-inline">
            <label class="layui-form-label">部门名称</label>
            <div class="layui-input-inline">
                <input type="text" name="deptName" placeholder="请输入部门名称" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">创建人</label>
            <div class="layui-input-inline">
                <input type="text" name="createBy" placeholder="请输入创建人" class="layui-input">
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


</div>

<script type="text/html" id="toolEventDemo">
    <a class="layui-btn layui-btn-xs" lay-event="update">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script id="status" type="text/html">
    {{#  if(d.status == 1){ }}
    <a  class="layui-btn layui-btn-xs layui-btn-normal">可用</a>
    {{#  } }}
    {{#  if(d.status == 0){ }}
    <a  class="layui-btn layui-btn-xs layui-btn-warm">禁用</a>
    {{#  } }}
</script>
<script>

    layui.use(['table', 'form', 'jquery', 'laydate'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;
        var laydate = layui.laydate;

        //第一个实例
        table.render({
            elem: '#demo'
            , height: 541
            , url: '${pageContext.request.contextPath}/dept/getAll.do' //数据接口
            , page: true //开启分页
            , limit: 7
            , limits: [3, 4, 5, 6, 7, 8, 10]
            , toolbar: '#bardemo'
            , autoSort: true
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'deptId', title: '部门ID', width: 100, sort: true}
                , {field: 'deptName', title: '部门名称', width: 120, sort: true}
                , {field: 'status', title: '状态', width: 120, sort: true,templet: '#status'}
                , {field: 'createBy', title: '创建人', width: 180, sort: true}
                , {field: 'createTime', title: '创建时间', width: 180, sort: true}
                , {field: 'updateTime', title: '更改时间', width: 170, sort: true}
                , {field: 'updateBy', title: '更改人', width: 170, sort: true}
                , {title: '操作', fixed: 'right', width: 200, templet: '#toolEventDemo'}
            ]]
        });

        //添加
        form.on('submit(addDept)', function (data) {
            console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
            $.ajax({
                url: "${pageContext.request.contextPath}/dept/saveDept.do",
                type: "POST",
                data: JSON.stringify(data.field),
                contentType: 'application/json',
                dataType: "JSON",
                success: function (ret) {
                    if (ret.code === 0) {
                        layer.closeAll();//关闭对话框
                        table.reload('demo', {
                            page: {
                                curr: 1
                            }
                        });
                    }
                    layer.msg(ret.msg);
                }
            })
            return false;
        });
        //查询
        form.on('submit(formDemo)', function (data) {
            console.log(data)
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    deptName: data.field.deptName //排序字段
                    , createBy: data.field.createBy//排序方式
                }
            });
            return false;
        });
        //修改
        form.on('submit(update)', function (data) {
            $.ajax({
                url: "${pageContext.request.contextPath}/dept/updateDept.do",
                type: "PUT",
                data: JSON.stringify(data.field),
                // headers: {'content-type': 'application/json'},
                contentType: 'application/json;charset=utf-8',
                // dataType: "JSON",
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
            })
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
                        console.log(data)
                        var ids = [];
                        for (var i = 0; i < data.length; i++) {
                            ids[i] = data[i].deptId;
                        }
                        console.log(ids)
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/dept/deleteDept.do?ids=" + ids,
                                type: "DELETE",
                                success: function (ret) {
                                    if (ret.code === 0) {
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
            if (layEvent === 'ewm') {
                layer.open({
                    type: 1,
                    content: $('#qrcode') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    , area: ['300px', '300px']
                });
            } else if (layEvent === 'update') {
                var swichBut = "";
                if (data.status === "0") {
                    swichBut += "<input type='checkbox' value='1' name='status' lay-skin='switch'/>"
                } else if (data.status === "1") {
                    swichBut += "<input type='checkbox' value='1' checked name='status' lay-skin='switch'/>"
                }
                $("#updateStatus").html(swichBut);
                //重新渲染表单
                layui.use('form', function () {
                    var form = layui.form;
                    form.render('checkbox');
                })
                layer.open({
                    type: 1,
                    content: $('#updateForm') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    , area: ['500px', '400px']
                });
            } else if (layEvent === 'del') { //删除
                layer.confirm('确定删除吗？', function (index) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/dept/deleteDept.do?ids=" + data.deptId,
                        type: "DELETE",
                        // data: {id: data.userid},
                        dataType: "JSON",
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
            form.val("updateForm", {
                "deptId": data.deptId
                , "deptName": data.deptName
                , "orderNum": data.orderNum
            });

        });
        //校验部门 名称是否重复
        $(".checkName").blur(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/dept/repetitionName.do",
                data: {deptName: $(".checkName").val()},
                dataType: "json",
                contentType:"charset=utf-8",
                type: "get",
                success: function (re) {
                    if (re.code === 0) {
                        $(".checkName").next().html(re.msg);
                        $('.checkAdd').removeClass("layui-btn-disabled").attr("disabled", false);
                    } else {
                        $(".checkName").next().html(re.msg);
                        $('.checkAdd').addClass("layui-btn-disabled").attr("disabled", true);
                    }
                }
            })
        })

    })
</script>
</body>
</html>
