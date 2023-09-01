<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<script type="text/html" id="bardemo">
    <a href="#" class="layui-btn layui-btn-normal" lay-event="add">添加</a>
</script>
<style>
    #app {
        width: 1319px;
        margin: 0 auto;
    }
</style>
<body>
<div id="app">
    <!--添加的表单-->
    <form class="layui-form" action="" id="addRole" style="display: none" enctype="multipart/form-data">
        <div class="layui-form-item">
            <label class="layui-form-label">角色名称</label>
            <div class="layui-input-inline">
                <input type="text" name="roleName" required lay-verify="required"
                       placeholder="请输入角色名称" autocomplete="off"
                       class="layui-input checkName"><span style="color: #eb7350"></span>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">关键词</label>
            <div class="layui-input-inline">
                <input type="text" name="roleKey" required lay-verify="required"
                       placeholder="请输入关键词" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">排列顺序</label>
            <div class="layui-input-inline">
                <input type="text" name="roleSort" lay-verify="required|number"
                       placeholder="请输入排列顺序" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">菜单权限</label>
            <div class="layui-input-block">
                <div id="addRoleTree"></div>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">是否启用</label>
            <div class="layui-input-block">
                <input type="checkbox" checked value="1" name="status" lay-skin="switch">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn checkAdd" lay-submit lay-filter="addRole">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <!--修改的表单-->
    <form class="layui-form" action="" id="updateForm" lay-filter="updateForm" style="display: none">
        <!--隐藏域提交id-->
        <input type="hidden" name="roleId"/>

        <div class="layui-form-item">
            <label class="layui-form-label">角色名称</label>
            <div class="layui-input-inline">
                <input type="text" name="roleName" required lay-verify="required"
                       placeholder="请输入角色名称" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">关键词</label>
            <div class="layui-input-inline">
                <input type="text" name="roleKey" required lay-verify="required"
                       placeholder="请输入关键词" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">排列顺序</label>
            <div class="layui-input-inline">
                <input type="text" name="roleSort" required lay-verify="required|number"
                       placeholder="请输入排列顺序" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">菜单权限</label>
            <div class="layui-input-block">
                <div id="updateRoleTree"></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">是否启用</label>
            <div class="layui-input-block" id="updateStatus">
                <%--<input type="checkbox" checked value="1" name="status" lay-skin="switch">--%>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="update">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <table id="demo" lay-filter="test"></table>
</div>
<%--绑定行工具栏--%>
<script type="text/html" id="toolEventDemo">
    <a class="layui-btn layui-btn-xs" lay-event="update">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<%--渲染页面的状态列，值为1，渲染可用，0，渲染禁用--%>
<script id="status" type="text/html">
    {{#  if(d.status == 1){ }}
    <a class="layui-btn layui-btn-xs layui-btn-normal">可用</a>
    {{#  } }}
    {{#  if(d.status == 0){ }}
    <a class="layui-btn layui-btn-xs layui-btn-warm">禁用</a>
    {{#  } }}
</script>
<script>

    layui.use(['table', 'form', 'jquery', 'laydate', 'tree'], function () {
        var table = layui.table;
        var form = layui.form;
        var tree = layui.tree;
        var $ = layui.jquery;
        var laydate = layui.laydate;
        //渲染主体表格
        table.render({
            elem: '#demo'
            , height: 588
            , url: '${pageContext.request.contextPath}/role/getAll.do' //数据接口
            , data: {"page": "", "limit": ""}
            , page: true //开启分页
            , limit: 7
            , limits: [3, 4, 5, 6, 7, 8, 10]
            , toolbar: '#bardemo'
            , autoSort: true
            , cols: [[ //表头
                {field: 'roleId', title: '角色Id', width: 80, sort: true}
                , {field: 'roleName', title: '角色名称', width: 160, sort: true}
                , {field: 'roleKey', title: '角色关键词', width: 150, sort: true}
                , {field: 'status', title: '状态', width: 80, sort: true, templet: '#status'}
                , {field: 'remark', title: '备注', width: 148}
                , {field: 'createBy', title: '创建人', width: 100, sort: true}
                , {field: 'createTime', title: '创建时间', width: 170, sort: true}
                , {field: 'updateTime', title: '更改时间', width: 170, sort: true}
                , {field: 'updateBy', title: '更改人', width: 100, sort: true}
                , {title: '操作', fixed: 'right', width: 150, templet: '#toolEventDemo'}
            ]]
        });

        //添加表单提交
        form.on('submit(addRole)', function (data) {
            //拿到角色树状表中选中的按钮值
            let checkData = tree.getChecked('addFormMenu');
            //转为字符串
            let list = getChecked_list(checkData)
            //给data多加一个属性，方便用字符串接收
            data.field.menus = list;

            $.ajax({
                url: "${pageContext.request.contextPath}/role/save.do",
                type: "POST",
                //不采用json发送数据
                // data: JSON.stringify(data.field),
                // contentType: 'application/json;charset=utf-8',
                data: data.field,
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
        //修改表单提交
        form.on('submit(update)', function (data) {
            let checkData = tree.getChecked('updateFormMenu');
            let list = getChecked_list(checkData)
            data.field.menus = list;
            $.ajax({
                url: "${pageContext.request.contextPath}/role/update.do",
                type: "post",
                data: data.field,
                // data: JSON.stringify(data.field),
                // headers: {'content-type': 'application/json'},
                // contentType: 'application/json;charset=utf-8',
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
            })
            return false;
        });
        // 头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'add':
                    document.getElementById("addRole").reset();
                    layer.open({
                        type: 1,
                        content: $('#addRole') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                        , area: ['500px', '400px']
                    });
                    break;
            }
        });
        // 单元格工具事件
        table.on('tool(test)', function (obj) { // 注：test 是 table 原始标签的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的 DOM 对象（如果有的话）
            if (layEvent === 'update') {
                //渲染表单中开关的状态
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
                tree.reload('updateFormMenu')
                //树形菜单回显
                $.ajax({
                    url: "${pageContext.request.contextPath}/role/getSelectMenu.do",
                    type: "GET",
                    dataType: "JSON",
                    data: {roleId: data.roleId},
                    success: function (ret) {
                        for (let i = 0; i < ret.data.length; i++) {
                            if (ret.data[i].menuType !== "M") {
                                tree.setChecked('updateFormMenu', ret.data[i].menuId);
                            }
                        }
                    }
                })
                form.render();
                //开启弹窗
                layer.open({
                    type: 1,
                    content: $('#updateForm') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    , area: ['500px', '400px']
                });
            } else if (layEvent === 'del') { //删除
                layer.confirm('确定删除吗？', function (index) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/role/delete.do?id=" + data.roleId,
                        type: "DELETE",
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
                "roleId": data.roleId
                , "roleName": data.roleName
                , "roleKey": data.roleKey
                , "roleSort": data.roleSort
                , "remark": data.remark
            });
        });
        //发送Ajax请求菜单列表
        $.ajax({
            url: "${pageContext.request.contextPath}/role/getAllMenu.do",
            type: "GET",
            dataType: "JSON",
            success: function (list) {

                //常规用法
                tree.render({
                    elem: '#addRoleTree' //默认是点击节点可进行收缩
                    , data: list.data
                    , showCheckbox: true
                    , id: 'addFormMenu'
                });

                tree.render({
                    elem: '#updateRoleTree' //默认是点击节点可进行收缩
                    , data: list.data
                    , showCheckbox: true
                    , id: 'updateFormMenu'
                });
            }
        })


        //获取选中的菜单id
        function getChecked_list(data) {
            let id = '';
            $.each(data, function (index, item) {
                if (id !== "") {
                    id = id + "," + item.id;
                } else {
                    id = item.id;
                }
                let i = getChecked_list(item.children);
                if (i !== "") {
                    id = id + "," + i;
                }
            })
            return id;
        }

    })
    //校验角色 名称是否重复
    $(".checkName").blur(function () {
        $.ajax({
            url: "${pageContext.request.contextPath}/role/repetitionName.do",
            data: {roleName: $(".checkName").val()},
            dataType: "json",
            contentType: "charset=utf-8",
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

</script>
</body>
</html>
