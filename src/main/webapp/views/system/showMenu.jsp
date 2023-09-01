<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/9/6
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--menu顶部工具栏-->
<script type="text/html" id="menuToolbar">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-xs" lay-event="addMenu">
            <i class="layui-icon layui-icon-add-1"></i>添加
        </button>
        <button id="expandAll" class="layui-btn layui-btn-xs layui-btn-primary">
            <i class="layui-icon layui-icon-shrink-right"></i>展开全部
        </button>
        <button id="foldAll" class="layui-btn layui-btn-xs layui-btn-primary">
            <i class="layui-icon layui-icon-spread-left"></i>折叠全部
        </button>
    </div>
</script>
<!--实现菜单管理操作功能按钮-->
<script type="text/html" id="menuBar">
    <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<!--实现添加菜单的form-->
<form class="layui-form" action="" id="addMenuForm" style="display: none">
    <div class="layui-form-item">
        <input type="hidden" name="parentId" id="parent_id">
        <label class="layui-form-label">上级菜单</label>
        <div class="layui-input-inline">
            <input type="text" name="parentName" placeholder="单击选择上级菜单"
                   autocomplete="off"
                   class="layui-input parent_name">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">菜单类型</label>
        <div class="layui-input-block">
            <input type="radio" name="menuType" lay-filter="menuType-filter" value="M" title="目录">
            <input type="radio" name="menuType" lay-filter="menuType-filter" value="C" title="菜单" checked="">
            <input type="radio" name="menuType" lay-filter="menuType-filter" value="F" title="按钮">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">菜单名称</label>
        <div class="layui-input-inline">
            <input type="text" name="menuName" required lay-verify="required" placeholder="请输入菜单名称" autocomplete="off"
                   class="layui-input">
        </div>
    </div>

    <div class="layui-form-item menu_url">
        <label class="layui-form-label">请求地址</label>
        <div class="layui-input-inline">
            <input type="text" name="url" placeholder="请输入请求地址" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item menu_perms">
        <label class="layui-form-label">权限标识</label>
        <div class="layui-input-inline">
            <input type="text" name="perms" placeholder="请输入权限标识" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">显示排序</label>
        <div class="layui-input-inline">
            <input type="number" name="orderNum" required lay-verify="required" placeholder="请输入显示排序" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-inline">
            <input type="text" name="remark" lay-verify="" placeholder="请输入备注信息" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit id="saveMenuButton" lay-filter="formSaveMenu">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<!--实现编辑菜单功能的form-->
<form class="layui-form" action="" id="updateMenuForm" lay-filter="update_menu_form_filter" style="display: none">
    <div class="layui-form-item">
        <input type="hidden" name="parentId" id="updateParentId">
        <input type="hidden" name="menuId">
        <label class="layui-form-label">上级菜单</label>
        <div class="layui-input-inline">
            <input type="text" name="parentName" placeholder="单击选择上级菜单"
                   autocomplete="off"
                   class="layui-input parent_name">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">菜单类型</label>
        <div class="layui-input-block">
            <input type="radio" name="menuType" lay-filter="menuType-filter" value="M" title="目录">
            <input type="radio" name="menuType" lay-filter="menuType-filter" value="C" title="菜单" checked="">
            <input type="radio" name="menuType" lay-filter="menuType-filter" value="F" title="按钮">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">菜单名称</label>
        <div class="layui-input-inline">
            <input type="text" name="menuName" required lay-verify="required" placeholder="请输入菜单名称" autocomplete="off"
                   class="layui-input">
        </div>
    </div>

    <div class="layui-form-item menu_url">
        <label class="layui-form-label">请求地址</label>
        <div class="layui-input-inline">
            <input type="text" name="url" placeholder="请输入请求地址" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item menu_perms">
        <label class="layui-form-label">权限标识</label>
        <div class="layui-input-inline">
            <input type="text" name="perms" placeholder="请输入权限标识" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">显示排序</label>
        <div class="layui-input-inline">
            <input type="number" name="orderNum" required lay-verify="required" placeholder="请输入显示排序" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-inline">
            <input type="text" name="remark" lay-verify="" placeholder="请输入备注信息" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formUpdateMenu">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<%--权限菜单，默认隐藏--%>
<div class="layui-form-item" id="parentMenu" style="display: none">
    <label class="layui-form-label">菜单权限</label>
    <div class="layui-input-inline">
        <div id="menuTreeChoose"></div>
    </div>
</div>
<table id="showMenu"></table>
<script>
    //自定义layui组件的目录
    layui.config({
        base: '${pageContext.request.contextPath}/static/layui/lay/modules/'
    }).extend({
        //设定组件别名
        treeTable: 'treeTable',
    });
    layui.use(['layer', 'jquery', 'form', 'treeTable', 'tree', 'util'], function () {
        let layer = layui.layer;
        let $ = layui.jquery;
        let form = layui.form;
        let util = layui.util;
        let treeTable = layui.treeTable;
        let tree = layui.tree;
        let index;
        $('body').removeClass('layui-hide');
        //生成menuTable表格
        let menuTable = treeTable.render({
            elem: '#showMenu'
            , url: '${pageContext.request.contextPath}/menu/getAllMenu.do'
            , toolbar: '#menuToolbar'
            , title: 'menuTable'
            , tree: {
                iconIndex: 2,
                isPidData: true,//开启父子结构
                idName: 'menuId',
                pidName: 'parentId'
            }
            , defaultToolbar: ['filter', 'exports', 'print']
            , cols: [
                [
                    {type: 'numbers'},
                    {field: 'menuId', title: '编号', minWidth: 40},
                    {field: 'menuName', title: '菜单名称', minWidth: 140},
                    {field: 'orderNum', title: '排序', minWidth: 30},
                    {field: 'url', title: '请求地址', minWidth: 80},
                    {
                        field: 'menuType', title: '类型', minWidth: 50,
                        templet: function (type) {
                            if (type.menuType === 'M') {
                                return '<button type="button" class="layui-btn layui-btn-normal layui-btn-xs">目录</button>'
                            } else if (type.menuType === 'C') {
                                return '<button type="button" class="layui-btn  layui-btn-xs">菜单</button>'
                            } else {
                                return '<button type="button" class="layui-btn  layui-btn-warm layui-btn-xs">按钮</button>'
                            }
                        }
                    },
                    {field: 'perms', title: '权限标识'},
                    {field: 'remark', title: '备注'},
                    {field: 'createTime', title: '创建时间'},
                    {fixed: 'right', align: 'center', toolbar: '#menuBar', title: '操作', width: 120}
                ]
            ]
        });
        //单选框
        form.on('radio(menuType-filter)', function (data) {
            let menuType = data.value;
            switch (menuType) {
                case 'M':
                    $(".menu_url").css('display', 'none');
                    $(".menu_perms").css('display', 'none');
                    break;
                case 'C':
                    $(".menu_url").css('display', 'block');
                    $(".menu_perms").css('display', 'block');
                    break;
                case 'F':
                    $(".menu_url").css('display', 'none');
                    $(".menu_perms").css('display', 'block');
                    break;
            }
        });
        //添加提交
        form.on('submit(formSaveMenu)', function (data) {
            //点击提交后，提交按钮改为禁用状态
            $("#saveMenuButton").attr("class", "layui-btn layui-btn-disabled")
            $.ajax({
                url: '${pageContext.request.contextPath}/menu/saveMenu.do',
                dataType: 'json',
                type: 'POST',
                data: JSON.stringify(data.field),
                contentType: "application/json;charset=utf-8",
                success: function (result) {
                    layer.closeAll();//关闭对话框
                    layer.msg(result.msg);
                    menuTable.reload();
                }
            });
            return false;
        });
        //修改提交
        form.on('submit(formUpdateMenu)', function (data) {
            $.ajax({
                url: '${pageContext.request.contextPath}/menu/updateMenu.do',
                dataType: 'json',
                type: 'put',
                data: JSON.stringify(data.field),
                contentType: "application/json",
                success: function (result) {
                    layer.closeAll();//关闭对话框
                    menuTable.reload();
                    layer.msg(result.msg);
                }
            });
            return false;
        });
        //监听头部工具栏事件
        treeTable.on('toolbar(showMenu)', function (obj) {

            if (obj.event === 'addMenu') {
                $("#saveMenuButton").attr("class", "layui-btn")
                //点击按钮把上次的记录重置掉
                document.getElementById("addMenuForm").reset();
                $.ajax({
                    //注意
                    url: '${pageContext.request.contextPath}/menu/getAllMenus.do',
                    dataType: 'JSON',
                    contentType: "application/json;charset=UTF-8",
                    type: 'GET',
                    success: function (ret) {
                        //常规用法
                        tree.render({
                            elem: '#menuTreeChoose' //默认是点击节点可进行收缩
                            , data: ret.data
                            , onlyIconControl: true
                            , click: function (obj) {
                                console.log(obj)
                                $("#parent_id").val(obj.data.id);
                                $(".parent_name").val(obj.data.title);
                                layer.close(index);
                            }
                        });
                    }
                });
                layer.open({
                    title: '添加菜单',
                    type: 1,
                    content: $('#addMenuForm'),
                    area: ['400px', '480px']
                });
            }
        });
        //监听行工具事件
        treeTable.on('tool(showMenu)', function (obj) {
            let event = obj.event;
            if (event === 'del') {
                var menuId = obj.data.menuId
                if (obj.data.hasOwnProperty('children') && obj.data.children.length > 0) {
                    layer.alert("含有子菜单，禁止删除!");
                } else {
                    //删除或者其他敏感操作，需要让用户确认
                    layer.confirm('确定要删除吗？', function () {
                        $.ajax({
                            url: '${pageContext.request.contextPath}/menu/deleteMenuById.do?menuId=' + menuId,
                            dataType: 'json',
                            type: 'DELETE',
                            success: function (result) {
                                if (result.code === 0) {
                                    menuTable.reload();
                                }
                                layer.closeAll();//关闭对话框
                                if (result.code === 0) {
                                    layer.msg(result.msg, {icon: 5});
                                }
                                layer.msg(result.msg, {icon: 6});
                            }
                        });
                    });
                }
            } else if (event === 'edit') {

                document.getElementById("updateMenuForm").reset();
                $.ajax({
                    url: '${pageContext.request.contextPath}/menu/getAllMenus.do',
                    dataType: 'json',
                    type: 'GET',
                    success: function (result) {
                        tree.render({
                            elem: '#menuTreeChoose'
                            , data: result.data
                            , onlyIconControl: true
                            , click: function (treeObj) {
                                $("#updateParentId").val(treeObj.data.id);
                                $(".parent_name").val(treeObj.data.title);
                                layer.close(index);
                            }
                        });
                    }
                });
                //获取父节点的名称
                $.ajax({
                    url: '${pageContext.request.contextPath}/menu/getParentNameById.do',
                    dataType: 'json',
                    type: 'GET',
                    data: {menuId: obj.data.parentId},
                    success: function (res) {
                        //将修改前的数据赋值给修改表单
                        form.val('update_menu_form_filter', {
                            "parentName": res.data.menuName
                            , "parentId": obj.data.parentId
                            , "menuId": obj.data.menuId
                            , "menuName": obj.data.menuName
                            , "url": obj.data.url
                            , "perms": obj.data.perms
                            , "orderNum": obj.data.orderNum
                            , "menuType": obj.data.menuType
                            , "remark": obj.data.remark
                        });
                    }
                });
                layer.open({
                    title: '编辑菜单',
                    type: 1,
                    content: $('#updateMenuForm'),
                    area: ['400px', '480px']
                });
            }
        });
        //点击上级菜单弹出菜单树
        $(".parent_name").click(function () {
            index = layer.open({
                title: '选择上级菜单',
                type: 1,
                content: $('#parentMenu'),
                area: ['400px', '350px']
            });
        });
        // 全部展开
        $('#expandAll').click(function () {
            menuTable.expandAll();
        });
        // 全部折叠
        $('#foldAll').click(function () {
            menuTable.foldAll();
        });
    })
</script>
</body>
</html>
