<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp" %>
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
    <%--二维码--%>
    <div id="qrcode" style="width:150px; height:150px; display: none; margin-left: 50px;margin-top: 20px">

    </div>
    <!--添加-->
    <form class="layui-form" action="" id="addUserForm" style="display: none" enctype="multipart/form-data">

        <div class="layui-form-item">
            <label class="layui-form-label">测试名称</label>
            <div class="layui-input-inline">
                <input type="text" name="testName" lay-verify="required"
                       placeholder="请输入测试名" autocomplete="off" class="layui-input" id="testNameAdd">
                <span style="color: red"></span>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">结束时间</label>
            <div class="layui-input-inline">
                <input type="text" name="testBegin" class="layui-input" required id="test" placeholder="请输入结束时间">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">结束时间</label>
            <div class="layui-input-inline">
                <input type="text" name="testEnd" class="layui-input" required id="test1" placeholder="请输入结束时间">
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="add" id="addSub">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <!--修改-->
    <form class="layui-form" action="" id="updateForm" lay-filter="updateForm" style="display: none">
        <!--隐藏域提交id-->
        <input type="hidden" name="id" id="id"/>
        <div class="layui-form-item">
            <label class="layui-form-label">测试名称</label>
            <div class="layui-input-inline">
                <input type="text" name="testName" lay-verify="required" id="testNameUp"
                       placeholder="请输入测试名" autocomplete="off" class="layui-input">
                <span style="color: red"></span>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">结束时间</label>
            <div class="layui-input-inline">
                <input type="text" name="testBegin" class="layui-input" required placeholder="请输入结束时间">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">结束时间</label>
            <div class="layui-input-inline">
                <input type="text" name="testEnd" class="layui-input" required placeholder="请输入结束时间">
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="update" id="subUp">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <!--条件查询-->
    <form class="layui-form" action="" style="margin-top: 10px">
        <div class="layui-inline">
            <label class="layui-form-label">测试名称</label>
            <div class="layui-input-inline">
                <input type="text" name="testName" placeholder="请输入测试名称" class="layui-input">
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
                <button type="reset" id="search_reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <%--查看网址--%>
    <div class="layui-form-item" id="viewURL" style="display: none;margin-top: 30px">
        <label class="layui-form-label">网址</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" readonly id="biao1"
                   value="http://${ip}:${port}/${pageContext.request.contextPath}/views/front/testLogin.jsp">
        </div>
        <input style="display: block; margin: 50px auto" type="button" class="layui-btn" id="copyUrl" value="点击复制"/>
    </div>
    <table id="demo" lay-filter="test"></table>


</div>

<script type="text/html" id="toolEventDemo">
    <a class="layui-btn layui-btn-xs" lay-event="ewm">查看二维码</a>
    <a class="layui-btn layui-btn-xs" lay-event="viewURL">查看网址</a>
    <a class="layui-btn layui-btn-xs" lay-event="update">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
    $("#reset").click(function () {
        $.ajax({
            url: "questionScl/getAll.do",
            data: {"question": "", "updateBy": ""},
            dataType: "JSON",
            contentType: "application/json;charset=utf-8",
            type: "post",
            async: true,
            success: function (data) {
                window.location.href = "showUser.html"
            }
        })
    })

    layui.use(['table', 'form', 'jquery', 'laydate'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;
        var laydate = layui.laydate;

        //第一个实例
        table.render({
            elem: '#demo'
            , height: 541
            , url: '${pageContext.request.contextPath}/testPlanScl/getAll.do' //数据接口
            , data: {"page": "", "limit": "", "testName": "", "createBy": ""}
            , page: true //开启分页
            , limit: 7
            , limits: [3, 4, 5, 6, 7, 8, 10]
            , toolbar: '#bardemo'
            , autoSort: true
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'id', title: 'ID', width: 80, sort: true}
                , {field: 'testName', title: '测试名称', width: 120, sort: true}
                , {field: 'testCode', title: '邀请码', width: 120, sort: true}
                , {field: 'testBegin', title: '开始时间', width: 186, sort: true}
                , {field: 'testEnd', title: '结束时间', width: 180, sort: true}
                , {field: 'remark', title: '备注', width: 170, sort: true}
                , {field: 'createBy', title: '创建人', width: 180, sort: true}
                , {field: 'createTime', title: '创建时间', width: 180, sort: true}
                , {field: 'updateTime', title: '更改时间', width: 170, sort: true}
                , {field: 'updateBy', title: '更改人', width: 170, sort: true}
                , {title: '操作', fixed: 'right', width: 270, templet: '#toolEventDemo'}
            ]]
        });
        //开始时间
        laydate.render({
            elem: '#test'
            , type: 'datetime'
            , value: new Date()
            , isInitValue: true
            , min: 0
        });
        //结束时间
        var now = new Date().getTime();
        laydate.render({
            elem: '#test1'
            , type: 'datetime'
            , value: new Date(now + 2 * 86400 * 1000)
            , isInitValue: true
            , min: 0
        });
        //添加
        form.on('submit(add)', function (data) {
            console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
            $.ajax({
                url: "${pageContext.request.contextPath}/testPlanScl/save.do",
                type: "POST",
                data: data.field,
                // headers: {'content-type': 'application/json'},
                // contentType: 'application/json',
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
        //查询
        form.on('submit(formDemo)', function (data) {
            console.log(data)
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    testName: data.field.testName //排序字段
                    , createBy: data.field.createBy//排序方式
                }
            });
            return false;
        });
        ///重置条件查询表单，刷新table数据
        $("#search_reset").click(function () {
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    testName: ""
                    , createBy: ""
                },
                page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
        });
        //修改
        form.on('submit(update)', function (data) {
            $.ajax({
                url: "${pageContext.request.contextPath}/testPlanScl/update.do",
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
                            let id = data[i].id;
                            ids[i] = id;
                        }
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/testPlanScl/delete.do?ids=" + ids,
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
            if (layEvent === 'ewm') {
                layer.open({
                    type: 1,
                    content: $('#qrcode') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    , area: ['300px', '300px']
                });
            } else if (layEvent === 'update') {
                form.val("updateForm", {
                    "id": data.id
                    , "testName": data.testName
                    , "testBegin": data.testBegin
                    , "testEnd": data.testEnd
                    , "remark": data.remark
                });
                layer.open({
                    type: 1,
                    content: $('#updateForm') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    , area: ['500px', '400px']
                });

                /*
                                           * 修改计划唯一性校验
                                           * */
                function Name() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/testPlanScl/repetitionName.do",
                        data: {testName: $("#testNameUp").val(), id: $("#id").val()},
                        dataType: "json",
                        type: "get",
                        success: function (re) {
                            console.log(re.code)
                            if (re.code == 0) {
                                $("#testNameUp").next().html("未重名");
                                $('#subUp').removeClass("layui-btn-disabled").attr("disabled", false);
                            } else {
                                $("#testNameUp").next().html("请重新输入");
                                $('#subUp').addClass("layui-btn-disabled").attr("disabled", true);
                            }
                        }
                    })
                }

                Name();
                $("#testNameUp").blur(function () {
                    Name();
                });
            } else if (layEvent === 'del') { //删除
                layer.confirm('确定删除吗？', function (index) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/testPlanScl/delete.do?ids=" + data.id,
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
            } else if (layEvent === 'viewURL') {
                layer.open({
                    type: 1,
                    content: $('#viewURL') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    , area: ['500px', '400px']
                });
            }


        });

        //二维码渲染
        layui.config({           //配置layui插件
            base: '${pageContext.request.contextPath}/static/layui/lay/modules/' //配置 layui 第三方扩展组件存放的  目录（不包含文件名）
        }).extend({
            qrcode: 'qrcode'        //前边是方法名，后边是文件名
        }).use(['qrcode'], function () {   //使用插件
            var $ = layui.$;
            $('#qrcode').qrcode({           //调用方法
                //这两个属性必须写
                render: "canvas",  //table or canvas     二维码生成的两种方式 canvas是生成图片 table是黑白格子组成的二维码
                text: "http://${ip}:${port}/${pageContext.request.contextPath}/views/front/testLogin.jsp",  //二维码的内容
                //宽高和颜色可以不设置
                width: 200,
                height: 200,
                foreground: "#000000",  //二维码上层颜色
                background: "#FFF"      //背景颜色
            });
        });
        /**
         * 添加计划 唯一性校验
         * */
        $("#testNameAdd").blur(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/testPlanScl/repetitionName.do",
                data: {testName: $("#testNameAdd").val()},
                dataType: "json",
                type: "get",
                success: function (re) {
                    if (re.code == 0) {
                        $("#testNameAdd").next().html(re.msg);
                        $('#addSub').removeClass("layui-btn-disabled").attr("disabled", false);
                    } else {
                        $("#testNameAdd").next().html(re.msg);
                        $('#addSub').addClass("layui-btn-disabled").attr("disabled", true);
                    }
                }
            })
        });
        /**
         * 复制url
         */
        $("#copyUrl").click(function () {
            var Url2 = document.getElementById("biao1");
            Url2.select(); // 选择对象
            document.execCommand("Copy"); // 执行浏览器复制命令
            layer.msg("已复制");
        })
    })
</script>
</body>
</html>
