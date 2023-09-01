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
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="text" name="username" required lay-verify="required|username"
                       placeholder="请输入用户名" autocomplete="off"
                       class="layui-input checkName"><span class="msgSpan" style="color: #eb7350"></span>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="text" name="password" required lay-verify="required|password" placeholder="请输入密码"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">手机号</label>
            <div class="layui-input-inline">
                <input type="text" name="phonenumber" required lay-verify="required|phone|number" placeholder="请输入手机号"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <input type="radio" name="sex" value="1" title="男">
                <input type="radio" name="sex" value="0" title="女" checked>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-inline">
                <input type="text" name="email" required lay-verify="required|email" placeholder="请输入邮箱"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">部门</label>
            <div class="layui-input-inline">
                <select name="deptid" lay-verify="required" id="deptidSelect">
                    <!--js中拼接HTML-->
                </select>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">角色</label>
            <div class="layui-input-block" id="roleForm">
                <%--拼接HTML--%>
                <%--   <input type="radio" name="roleId" value="1" checked title="管理员">
                   <input type="radio" name="roleId" value="2" title="普通角色">
                   <input type="radio" name="roleId" value="3" title="测试人员">--%>

            </div>
        </div>

        <div class=" layui-form-item">
            <!--隐藏input，提交表单的时候，将url提交到后端接口-->
            <input type="hidden" name="avatar" id="avatar">
            <div class="layui-upload">
                <div class="layui-upload-list">
                    <img class="layui-upload-img" id="demo1" src="" style="width: 100px;height: 80px">
                    <p id="demoText"></p>
                </div>
                <button type="button" class="layui-btn" name="xxx" id="testUpload" >上传头像</button>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn checkAdd" lay-submit lay-filter="addUser">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <!--修改-->
    <form class="layui-form" action="" id="updateForm" lay-filter="updateForm" style="display: none">
        <!--隐藏域提交id-->
        <input type="hidden" name="userid"/>

        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="text" name="username" required lay-verify="required|username"
                       placeholder="请输入用户名" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">手机号</label>
            <div class="layui-input-inline">
                <input type="text" name="phonenumber" required lay-verify="required|phone|number" placeholder="请输入手机号"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <input type="radio" name="sex" value="1" title="男">
                <input type="radio" name="sex" value="0" title="女" checked>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-inline">
                <input type="text" name="email" required lay-verify="required|email" placeholder="请输入邮箱"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">部门</label>
            <div class="layui-input-inline">
                <select name="deptid" lay-verify="required" id="deptSelect">
                    <!--js中拼接HTML-->
                </select>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">角色</label>
            <div class="layui-input-block" id="updFormRole">
                <%--    <input type="radio" name="roleId" value="1" checked title="管理员">
                    <input type="radio" name="roleId" value="2" title="普通角色">
                    <input type="radio" name="roleId" value="3" title="测试人员">--%>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">是否启用</label>
            <div class="layui-input-block" id="updateStatus">
                <%--<input type="checkbox" name="status" value="1" lay-skin="switch">--%>
                <input type='checkbox' value='1' checked name='status' lay-skin='switch'/>
            </div>
        </div>

        <%--显示头像--%>
        <div class="layui-form-item">
            <input type="image" name="avatar" id="avatar2" style="width: 100px;">
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="update">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <!--重置密码-->
    <form class="layui-form" action="" id="resetPasswordForm" lay-filter="resetPasswordForm" style="display: none">
        <!--隐藏域提交id-->
        <input type="hidden" name="userid"/>
        <div class="layui-form-item">
            <label class="layui-form-label">请输入密码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" required lay-verify="required"
                       placeholder="请输入想要修改的密码" autocomplete="off"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="resetPassword">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <!--条件查询-->
    <form class="layui-form" action="" style="margin-top: 10px">
        <div class="layui-inline">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="text" name="username" placeholder="请输入用户名" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">部门</label>
            <div class="layui-input-inline">
                <select name="deptid" id="selectDept">
                    <option value="">请选择</option>
                    <!--                    js中拼接HTML-->
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


</div>

<script type="text/html" id="toolEventDemo">
    <a class="layui-btn layui-btn-xs" lay-event="resetPassword">重置密码</a>
    <a class="layui-btn layui-btn-xs" lay-event="update">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script id="status" type="text/html">
    {{#  if(d.status == 1){ }}
    <a class="layui-btn layui-btn-xs layui-btn-normal">可用</a>
    {{#  } }}
    {{#  if(d.status == 0){ }}
    <a class="layui-btn layui-btn-xs layui-btn-warm">禁用</a>
    {{#  } }}
</script>
<script>

    layui.use(['table', 'form', 'jquery', 'util', 'upload'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;
        var util = layui.util;
        var upload = layui.upload;

        //头像回显
        var uploadInst = upload.render({
            elem: '#testUpload' //绑定元素
            , url: 'upload.do' //上传接口
            , done: function (res) {
                //上传完毕回调
                let src = res.data;
                $("#avatar").val(src);
                $('#demo1').attr('src', src);
            }
            , error: function () {
                //请求异常回调
            }
        });
        //第一个实例
        table.render({
            elem: '#demo'
            , height: 541
            , url: '${pageContext.request.contextPath}/user/getAll.do' //数据接口
            , data: {"page": "", "limit": "", "username": "", "deptid": ""}
            , page: true //开启分页
            , limit: 7
            , limits: [3, 4, 5, 6, 7, 8, 10]
            , toolbar: '#bardemo'
            , autoSort: true
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'userid', title: 'ID', width: 80, sort: true}
                , {field: 'username', title: '用户名', width: 120, sort: true}
                , {field: 'remark', title: '备注', width: 170, sort: true}
                , {field: 'status', title: '是否启用', width: 170, sort: true, templet: '#status'}
                , {field: 'createTime', title: '创建时间', width: 180, sort: true}
                , {field: 'createBy', title: '创建人', width: 180, sort: true}
                , {field: 'updateTime', title: '修改时间', width: 180, sort: true}
                , {field: 'updateBy', title: '修改人', width: 180, sort: true}
                , {field: 'deptName', title: '部门名称', width: 180, sort: true}
                , {field: 'deptid', title: '部门编号', width: 170, sort: true}
                , {
                    field: 'avatar', title: '头像', width: 180, templet: function (d) {
                        //得到当前行数据，并拼接成自定义模板
                        return "<img src='" + d.avatar + "'/>"
                    }
                }

                , {title: '操作', fixed: 'right', width: 200, templet: '#toolEventDemo'}
            ]]
        });

        //添加
        form.on('submit(addUser)', function (data) {
            $.ajax({
                url: "${pageContext.request.contextPath}/user/save.do",
                type: "POST",
                data: JSON.stringify(data.field),
                // headers: {'content-type': 'application/json'},
                contentType: 'application/json',
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
        //初始化搜索的下拉框
        $.ajax({
            url: "${pageContext.request.contextPath}/dept/getAllByStatus.do",
            type: "get",
            dataType: "JSON",
            async: true,
            success: function (ret) {
                if (ret.code == 0) {
                    //<option value="0">写作</option>
                    var htmlStr = "<option value=''>请选择部门</option>";
                    for (let i = 0; i < ret.data.length; i++) {
                        htmlStr += "<option value=" + ret.data[i].deptId + ">" + ret.data[i].deptName + "</option>"
                    }
                    $("#selectDept").html(htmlStr);
                    //重新渲染表单
                    layui.use('form', function () {
                        var form = layui.form;
                        form.render('select');
                    })
                }
            }
        });
        //查询
        form.on('submit(formDemo)', function (data) {

            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    username: data.field.username //排序字段
                    , deptid: data.field.deptid//排序方式
                }
            });
            return false;
        });
        //修改
        form.on('submit(update)', function (data) {
            $.ajax({
                url: "${pageContext.request.contextPath}/user/update.do",
                type: "POST",
                data: JSON.stringify(data.field),
                // headers: {'content-type': 'application/json'},
                contentType: 'application/json',
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
        //重置密码
        form.on('submit(resetPassword)', function (data) {
            $.ajax({
                url: "${pageContext.request.contextPath}/user/resetPwd.do",
                type: "POST",
                data: JSON.stringify(data.field),
                // headers: {'content-type': 'application/json'},
                contentType: 'application/json',
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
                    $.ajax({
                        url: "${pageContext.request.contextPath}/dept/getAllByStatus.do",
                        type: "get",
                        dataType: "JSON",
                        success: function (ret) {
                            if (ret.code == 0) {
                                //<option value="0">写作</option>
                                var htmlStr = "";
                                for (let i = 0; i < ret.data.length; i++) {
                                    htmlStr += "<option value=" + ret.data[i].deptId + ">" + ret.data[i].deptName + "</option>"
                                }
                                $("#deptidSelect").html(htmlStr);
                                //重新渲染表单
                                layui.use('form', function () {
                                    var form = layui.form;
                                    form.render('select');
                                })
                            }
                        }
                    });
                    $.ajax({
                        url: "${pageContext.request.contextPath}/role/getAllByStatus.do",
                        type: "get",
                        dataType: "JSON",
                        success: function (ret) {
                            if (ret.code === 0) {
                                console.log(ret.data)
                                /**
                                 *<input type="radio" name="roleId" value="1" checked title="管理员">
                                 */
                                var htmlStr = "";
                                for (let i = 0; i < ret.data.length; i++) {
                                    if (i === 0) {
                                        htmlStr += "<input type='radio' checked name='roleId' value='" + ret.data[i].roleId + "' title='" + ret.data[i].roleName + "'>"
                                    } else {
                                        htmlStr += "<input type='radio' name='roleId' value='" + ret.data[i].roleId + "' title='" + ret.data[i].roleName + "'>"
                                    }
                                }
                                $("#roleForm").html(htmlStr);
                                //重新渲染表单
                                layui.use('form', function () {
                                    var form = layui.form;
                                    form.render('radio');
                                })
                            }
                        }
                    });
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
                            let userid = data[i].userid;
                            ids[i] = userid;
                        }
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/user/delete.do?ids=" + ids,
                                type: "get",
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
            if (layEvent === 'update') {

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
                }),
                    //查询部门信息
                    $.ajax({
                        url: "${pageContext.request.contextPath}/dept/getAllByStatus.do",
                        type: "POST",
                        dataType: "JSON",
                        success: function (ret) {
                            if (ret.code === 0) {
                                //<option value="0">写作</option>
                                var htmlStr = "";
                                console.log(ret.data.length)
                                for (let i = 0; i < ret.data.length; i++) {
                                    if (data.deptid === ret.data[i].deptId) {
                                        htmlStr += "<option selected value=" + ret.data[i].deptId + ">" + ret.data[i].deptName + "</option>"
                                    } else {
                                        htmlStr += "<option value=" + ret.data[i].deptId + ">" + ret.data[i].deptName + "</option>"
                                    }
                                }
                                $("#deptSelect").html(htmlStr);
                                //重新渲染表单
                                layui.use('form', function () {
                                    var form = layui.form;
                                    form.render('select');
                                })
                            }
                        }
                    }),
                    //查询角色
                    $.ajax({
                        url: "${pageContext.request.contextPath}/role/getAllByStatus.do",
                        data: {"page": 1, "limit": 100},
                        type: "get",
                        dataType: "JSON",
                        success: function (ret) {
                            if (ret.code === 0) {
                                /**
                                 *<input type="radio" name="roleId" value="1" checked title="管理员">
                                 */
                                var htmlStr = "";
                                for (let i = 0; i < ret.data.length; i++) {
                                    if (data.roleId === ret.data[i].roleId) {
                                        htmlStr += "<input type='radio' checked name='roleId' value='" + ret.data[i].roleId + "' title='" + ret.data[i].roleName + "'>"
                                    } else {
                                        htmlStr += "<input type='radio' name='roleId' value='" + ret.data[i].roleId + "' title='" + ret.data[i].roleName + "'>"
                                    }
                                }
                                $("#updFormRole").html(htmlStr);
                                //重新渲染表单
                                layui.use('form', function () {
                                    var form = layui.form;
                                    form.render('radio');
                                })
                            }
                        }
                    }),
                    layer.open({
                        type: 1,
                        content: $('#updateForm') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                        , area: ['500px', '400px']
                    })
            } else if (layEvent === 'del') { //删除
                layer.confirm('确定删除吗？', function (index) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/user/delete.do?ids=" + data.userid,
                        type: "POST",
                        // data: {id: data.userid},
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
                    });
                })
            } else if (layEvent === 'resetPassword') { //删除
                layer.open({
                    type: 1,
                    //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    content: $('#resetPasswordForm')
                    , area: ['500px', '400px']
                });
            }
            //updateForm 即 class="layui-form" 所在元素属性 lay-filter="" 对应的值
            form.val("updateForm", {
                // "name": "value"
                "username": data.username
                , "password": data.password
                , "deptid": data.deptid
                , "email": data.email
                , "sex": data.sex
                , "phonenumber": data.phonenumber
                , "avatar": data.avatar
                , "remark": data.remark
                , "userid": data.userid
            });
            $('#avatar2').attr('src', data.avatar);
            form.val("resetPasswordForm", {
                "userid": data.userid
            });
        });
        //表单校验
        form.verify({
            //value：表单的值、item：表单的DOM对象
            username: function (value, item) {
                if (!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)) {
                    return '用户名不能有特殊字符';
                }
                if (/(^\_)|(\__)|(\_+$)/.test(value)) {
                    return '用户名首尾不能出现下划线\'_\'';
                }
                if (/^\d+\d+\d$/.test(value)) {
                    return '用户名不能全为数字';
                }
            }

            //我们既支持上述函数式的方式，也支持下述数组的形式
            //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
            , password: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
        });
        //校验部门 名称是否重复
        $(".checkName").blur(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/user/repetitionName.do",
                data: {userName: $(".checkName").val()},
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
