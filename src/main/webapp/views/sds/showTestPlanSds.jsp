<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>显示SDS测试计划</title>
</head>
<body>
<%--头部工具栏--%>
<script type="text/html" id="barDemo">
    <a class="layui-btn " lay-event="save"><i class="layui-icon layui-icon-add-circle"></i> 添加</a>
    <a class="layui-btn layui-btn-danger " lay-event="delete"><i class="layui-icon layui-icon-delete"></i>删除</a>
</script>
<%--行内工具栏--%>
<script type="text/html" id="rowBarDemo">
    <a class="layui-btn  layui-btn-xs" lay-event="detail">查看二维码</a>
    <a class="layui-btn  layui-btn-xs" lay-event="viewURL">查看网址</a>
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="update">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="delete">删除</a>
</script>
<%--添加表单--%>
<form class="layui-form" action="" id="saveQuestionForm" style="display: none;margin-right: 40px;margin-top: 20px">
    <div class="layui-form-item">
        <label class="layui-form-label">测试名称</label>
        <div class="layui-input-block">
            <input type="text" name="testName" required lay-verify="required" placeholder="请输入测试名称"
                   autocomplete="off" class="layui-input" id="testNameAdd"><span style="color: red"></span>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">开始时间</label>
        <div class="layui-input-block">
            <input type="text" name="testBegin" required lay-verify="required" placeholder="请输入开始时间"
                   autocomplete="off" class="layui-input" id="beginTime">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">结束时间</label>
        <div class="layui-input-block">
            <input type="text" name="testEnd" required lay-verify="required" placeholder="请输入结束时间"
                   autocomplete="off" class="layui-input" id="endTime">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-block">
            <input type="text" name="remark" required lay-verify="remark" placeholder="请输入备注"
                   autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formSavePlanFpa" id="addSub">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<%--查看网址--%>
<div class="layui-form-item" id="viewURL" style="display: none;margin-top: 30px">
    <label class="layui-form-label">网址</label>
    <div class="layui-input-block">
        <input type="text" class="layui-input" readonly  id="biao1"
               value="http://${ip}:${port}/${pageContext.request.contextPath}/views/front/testLogin.jsp">
    </div>
    <input style="display: block; margin: 50px auto" type="button" class="layui-btn" id="copyUrl" value="点击复制"/>
</div>
<%--修改表单--%>
<form class="layui-form" action="" lay-filter="example" id="updateQuestionForm"
      style="display: none;margin-right: 40px;margin-top: 20px">
    <input type="hidden" name="id" id="id">
    <div class="layui-form-item">
        <label class="layui-form-label">测试名称</label>
        <div class="layui-input-block">
            <input type="text" name="testName" required lay-verify="required" placeholder="请输入测试名称"
                   autocomplete="off" class="layui-input" id="testNameUp"><span style="color: red"></span>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">开始时间</label>
        <div class="layui-input-block">
            <input type="text" name="testBegin" required lay-verify="required" placeholder="请输入开始时间"
                   autocomplete="off" class="layui-input" id="upBegin">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">结束时间</label>
        <div class="layui-input-block">
            <input type="text" name="testEnd" required lay-verify="required" placeholder="请输入结束时间"
                   autocomplete="off" class="layui-input" id="upEnd">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-block">
            <input type="text" name="remark" required lay-verify="remark" placeholder="请输入备注"
                   autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="updateQuestionFilter" id="subUp">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<%--模糊查询--%>
<form class="layui-form" action="" style="margin-top: 10px">
    <div class="layui-inline">
        <label class="layui-form-label">测试名称</label>
        <div class="layui-input-inline">
            <input type="text" name="testName" placeholder="请输入问题" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">创建人</label>
        <div class="layui-input-inline">
            <input type="text" name="createBy" placeholder="请输入创建人" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-inline">
        <div class="layui-input-inline">
            <button class="layui-btn" lay-submit lay-filter="selectFormfilter">查询</button>
            <button type="reset" class="layui-btn layui-btn-primary" id="myButton">重置</button>
        </div>
    </div>
</form>
<%--二维码--%>
<div id="qrcode" style="width:150px; height:150px; display: none; margin-left: 50px;margin-top: 20px"></div>
<%--数据表格--%>
<table id="demo" lay-filter="test"></table>
</body>
<script>
    layui.use(['table', 'jquery', 'form', 'laydate'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery, laydate = layui.laydate;

        //第一个实例
        var myTable = table.render({
            elem: '#demo'
            , height: 550
            , url: '${pageContext.request.contextPath}/tblTestPlanSds/queryByPage.do' //数据接口
            , page: true //开启分页
            , limit: 10
            , limits: [5, 10, 15, 20, 25, 30, 50, 100]
            , toolbar: '#barDemo'
            , cols: [
                [ //表头
                    {type: 'checkbox', fixed: 'left'}
                    , {field: 'id', title: 'ID', width: 120, sort: true}
                    , {field: 'testName', title: '测试名称', width: 120, sort: true}
                    , {field: 'testCode', title: '测试邀请码', width: 120, sort: true}
                    , {field: 'testBegin', title: '开始时间', width: 120, sort: true}
                    , {field: 'testEnd', title: '结束时间', width: 120}
                    , {field: 'createTime', title: '创建时间', width: 120}
                    , {field: 'createBy', title: '创建者', width: 120}
                    , {field: 'updateTime', title: '修改时间', width: 120}
                    , {field: 'updateBy', title: '修改者', width: 120}
                    , {field: 'remark', title: '备注', width: 120}
                    , {fixed: 'right', title: '操作', width: 270, align: 'center', toolbar: '#rowBarDemo'}

                ]
            ]
        });

        //监听头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'save':
                    layer.open({
                        title: '添加计划',
                        type: 1,
                        area: ['500px', '450px'],
                        content: $("#saveQuestionForm")//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    });
                    laydate.render({
                        elem: '#beginTime'
                        , type: 'datetime'
                        , value: new Date()
                        , isInitValue: true
                    });
                    var now = new Date().getTime();
                    laydate.render({
                        elem: '#endTime'
                        , type: 'datetime'
                        , value: new Date(now + 2 * 86400 * 1000)
                        , isInitValue: true
                    });
                    break;
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
                                url: "${pageContext.request.contextPath}/tblTestPlanSds/deletePlanSds.do",
                                type: "POST",
                                dataType: "JSON",
                                data: {idList: idList.join(",")},
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
            ;
        });
        /*
        *
        * 添加计划 唯一性校验
        * */
        $("#testNameAdd").blur(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/tblTestPlanSds/repetitionName.do",
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
        })
        /*
        * 添加计划
        * */
        form.on('submit(formSavePlanFpa)', function (data) {
            //提交表单数据
            $.ajax({
                url: "${pageContext.request.contextPath}/tblTestPlanSds/insertPlan.do",
                type: "POST",
                dataType: "JSON",
                //data:data.field,
                //contentType:"application/json;charset=UTF-8",
                data: data.field,
                success: function (ret) {
                    if (ret.code == 0) {
                        //关闭对话框
                        layer.closeAll();
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
            document.getElementById("saveQuestionForm").reset();
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });

        //监听行工具事件
        table.on('tool(test)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'delete') {
                layer.confirm('真的删除行么', function (index) {
                    //obj.del(); //删除对应行（tr）的DOM结构
                    //删除数据库中的数据
                    $.ajax({
                        url: "${pageContext.request.contextPath}/tblTestPlanSds/deletePlanSds.do",
                        type: "POST",
                        dataType: "JSON",
                        data: {idList: data.id},
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
            } else if (layEvent === 'update') {
                //表单弹出之前进行数据的填充，也叫做表单赋值
                //表单赋值
                form.val('example', {
                    "id": data.id, // "name": "value"
                    "testName": data.testName, // "name": "value"
                    "remark": data.remark, // "name": "value"
                });
                //日期回显
                laydate.render({
                    elem: '#upBegin'
                    , type: 'datetime'
                    , value: data.testBegin
                    , isInitValue: true
                });
                laydate.render({
                    elem: '#upEnd'
                    , type: 'datetime'
                    , value: data.testEnd
                    , isInitValue: true
                });
                layer.open({
                    title: '修改问题',
                    type: 1,
                    area: ['500px', '450px'],
                    content: $("#updateQuestionForm")//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                });
                /*
                * 修改计划唯一性校验
                * */
                function Name() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/tblTestPlanSds/repetitionName.do",
                        data: {testName: $("#testNameUp").val(),id:$("#id").val()},
                        dataType: "json",
                        type: "get",
                        success: function (re) {
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
                })
            }else if (layEvent === 'detail') {
                layer.open({
                    title: '查看二维码',
                    skin: "layui-layer-molv",//弹出层=皮肤样式
                    type: 1,
                    content: $("#qrcode"),
                    area: ['300px', '300px']
                })
            }else if (layEvent === 'viewURL'){
                layer.open({
                    type: 1,
                    content: $('#viewURL') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    , area: ['500px', '400px']
                });
            }
        });
        /*
        * 监听修改提交按钮
        * */
        form.on('submit(updateQuestionFilter)', function (data) {
            //提交表单数据
            $.ajax({
                url: "${pageContext.request.contextPath}/tblTestPlanSds/updatePlanSds.do",
                type: "post",
                dataType: "JSON",
                //contentType: "application/json;charset=UTF-8",
                data: data.field,
                success: function (ret) {
                    if (ret.code == 0) {
                        //关闭对话框
                        layer.closeAll();
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
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });

        //====================================提交条件查询==================================================
        form.on('submit(selectFormfilter)', function (data) {
            //提交表单数据
            myTable.reload({
                where: { //设定异步数据接口的额外参数，任意设
                    testName: data.field.testName
                    , createBy: data.field.createBy
                }
                ,
                page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });

        ///重置条件查询表单，刷新table数据
        $("#myButton").click(function () {
            myTable.reload({
                where: { //设定异步数据接口的额外参数，任意设
                    testName: ""
                    , createBy: ""
                    //…
                }
                , page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
        })

    });
    //二维码渲染
    layui.config({                  //配置layui插件
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
        /**
         * 复制url
         */
        $("#copyUrl").click(function () {
            var Url2 = document.getElementById("biao1");
            Url2.select(); // 选择对象
            document.execCommand("Copy"); // 执行浏览器复制命令
            layer.msg("已复制");
        })
    });
</script>
</html>
