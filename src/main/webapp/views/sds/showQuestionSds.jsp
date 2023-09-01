<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>显示题目</title>
</head>
<body>
<%--头部工具栏--%>
<script type="text/html" id="barDemo">
    <a class="layui-btn " lay-event="save"><i class="layui-icon layui-icon-add-circle"></i> 添加</a>
    <a class="layui-btn layui-btn-danger " lay-event="delete"><i class="layui-icon layui-icon-delete"></i>删除</a>
</script>
<%--行内工具栏--%>
<script type="text/html" id="rowBarDemo">
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="update">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="delete">删除</a>
</script>
<%--添加表单--%>
<form class="layui-form" action="" id="saveQuestionForm" style="display: none;margin-right: 40px;margin-top: 20px">
    <div class="layui-form-item">
        <label class="layui-form-label">问题描述</label>
        <div class="layui-input-block">
            <input type="text" name="question" required lay-verify="required" placeholder="请输入问题描述" autocomplete="off"
                   class="layui-input" id="questionAdd"><span style="color: red"></span>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">选项A</label>
        <div class="layui-input-block">
            <textarea name="optionA" placeholder="请输入内容" required lay-verify="required"
                      class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">选项B</label>
        <div class="layui-input-block">
            <textarea name="optionB" placeholder="请输入内容" required lay-verify="required"
                      class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">选项C</label>
        <div class="layui-input-block">
            <textarea name="optionC" placeholder="请输入内容" required lay-verify="required"
                      class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">选项D</label>
        <div class="layui-input-block">
            <textarea name="optionD" placeholder="请输入内容" required lay-verify="required"
                      class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">问题类型</label>
        <div class="layui-input-block">
            <select name="type" lay-verify="required">
                <option value="1">正向计分</option>
                <option value="2">反向计分</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">状态</label>
        <div class="layui-input-block">
            <input type="checkbox" name="status" value="0" checked lay-skin="switch" lay-text="开启|关闭">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="saveQuestionFilter" id="addQuestion">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<%--修改表单--%>
<form class="layui-form" action="" lay-filter="example" id="updateQuestionForm"
      style="display: none;margin-right: 40px;margin-top: 20px">
    <input type="hidden" name="id" id="id">
    <div class="layui-form-item">
        <label class="layui-form-label">问题描述</label>
        <div class="layui-input-block">
            <input type="text" name="question" required lay-verify="required" placeholder="请输入问题描述" autocomplete="off"
                   class="layui-input" id="questionUp"><span style="color: red"></span>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">选项A</label>
        <div class="layui-input-block">
            <textarea name="optionA" placeholder="请输入内容" required lay-verify="required"
                      class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">选项B</label>
        <div class="layui-input-block">
            <textarea name="optionB" placeholder="请输入内容" required lay-verify="required"
                      class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">选项C</label>
        <div class="layui-input-block">
            <textarea name="optionC" placeholder="请输入内容" required lay-verify="required"
                      class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">选项D</label>
        <div class="layui-input-block">
            <textarea name="optionD" placeholder="请输入内容" required lay-verify="required"
                      class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">问题类型</label>
        <div class="layui-input-block">
            <select name="type" lay-verify="required">
                <option value="1">正向计分</option>
                <option value="2">反向计分</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">状态</label>
        <div class="layui-input-block">
            <input id="status" type="checkbox" name="status" value="1" checked lay-skin="switch" lay-text="可用|失效">
        </div>
    </div>
    <!--<div class="layui-form-item">
        <label class="layui-form-label">修改人</label>
        <div class="layui-input-block">
            <input type="text" name="updater" required  lay-verify="required" placeholder="请输入问题描述" autocomplete="off" class="layui-input">
        </div>
    </div>-->
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="updateQuestionFilter" id="upQuestion">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<%--模糊查询--%>
<form class="layui-form" action="" style="margin-top: 10px">
    <div class="layui-inline">
        <label class="layui-form-label">问题</label>
        <div class="layui-input-inline">
            <input type="text" name="question" placeholder="请输入问题" autocomplete="off" class="layui-input">
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
<%--数据内容--%>
<table id="demo" lay-filter="test"></table>
</body>
<script>
    layui.use(['table', 'jquery', 'form'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;

        //第一个实例
        var myTable = table.render({
            elem: '#demo'
            , height: 550
            , url: '${pageContext.request.contextPath}/questionSds/allQuestionSds.do' //数据接口
            , page: true //开启分页
            , limit: 10
            , limits: [5, 10, 15, 20, 25, 30, 50, 100]
            , toolbar: '#barDemo'
            , cols: [
                [ //表头
                    {type: 'checkbox', fixed: 'left'}
                    , {field: 'id', title: 'ID', width: 80, sort: true, fixed: 'left'}
                    , {field: 'question', title: '问题', width: 120, sort: true}
                    , {field: 'optionA', title: '选项A', width: 120}
                    , {field: 'optionB', title: '选项B', width: 120}
                    , {field: 'optionC', title: '选项C', width: 120}
                    , {field: 'optionD', title: '选项D', width: 120}
                    , {
                    field: 'type', title: '类型', width: 120,
                    templet: function (d) {
                        //得到当前行数据，并拼接成自定义模板
                        if (d.type == 1) {
                            //return '可用'
                            return 'SDS正向计分'
                        } else if (d.type == 2) {
                            return 'SDS反向计分'
                        } else {
                            return '未知类型'
                        }

                    }
                }
                    , {
                    field: 'status', title: '状态', width: 80,
                    templet: function (d) {
                        //得到当前行数据，并拼接成自定义模板
                        if (d.status == 0) {
                            //return '可用'
                            return '<a class="layui-btn  layui-btn-xs">可用</a>'
                        } else {
                            return '<a class="layui-btn layui-btn-disabled  layui-btn-xs">失效</a>'
                        }

                    }
                }
                    , {field: 'createTime', title: '创建时间', width: 170}
                    , {field: 'createBy', title: '创建人', width: 100}
                    , {field: 'updateTime', title: '修改时间', width: 170}
                    , {field: 'updateBy', title: '修改人', width: 100}
                    , {fixed: 'right', width: 120, align: 'center', toolbar: '#rowBarDemo'}

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
                        title: '添加问题',
                        type: 1,
                        area: ['500px', '450px'],
                        content: $("#saveQuestionForm")//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
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
                                url: "${pageContext.request.contextPath}/questionSds/deleteSds.do",
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
        * 添加题目 唯一性校验
        * */
        $("#questionAdd").blur(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/questionSds/repetitionName.do",
                data: {question: $("#questionAdd").val()},
                dataType: "json",
                type: "get",
                success: function (re) {
                    if (re.code == 0) {
                        $("#questionAdd").next().html(re.msg);
                        $('#addQuestion').removeClass("layui-btn-disabled").attr("disabled", false);
                    } else {
                        $("#questionAdd").next().html(re.msg);
                        $('#addQuestion').addClass("layui-btn-disabled").attr("disabled", true);
                    }
                }
            })
        })
        /*
        * 监听添加按钮
        * */
        form.on('submit(saveQuestionFilter)', function (data) {
            //提交表单数据
            if (data.field.status === '0') {
                data.field.status = 0;
            } else {
                data.field.status = 1;
            }
            $.ajax({
                url: "${pageContext.request.contextPath}/questionSds/insertSds.do",
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
                        url: "${pageContext.request.contextPath}/questionSds/deleteSds.do",
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
                if (data.status === 1) {
                    document.getElementById("status").checked = true;
                } else {
                    document.getElementById("status").checked = false;
                }
                form.val('example', {
                    "question": data.question, // "name": "value"
                    "optionA": data.optionA, // "name": "value"
                    "optionB": data.optionB, // "name": "value"
                    "optionC": data.optionC, // "name": "value"
                    "optionD": data.optionD, // "name": "value"
                    "type": data.type, // "name": "value"
                    "updater": "",
                    "id": data.id
                });
                layer.open({
                    title: '修改问题',
                    type: 1,
                    area: ['500px', '450px'],
                    content: $("#updateQuestionForm")//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                });

                /*
                * 修改题目唯一性校验
                * */
                function Name() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/questionSds/repetitionName.do",
                        data: {question: $("#questionUp").val(), id: $("#id").val()},
                        dataType: "json",
                        type: "get",
                        success: function (re) {
                            if (re.code == 0) {
                                $("#questionUp").next().html("未重名");
                                $('#upQuestion').removeClass("layui-btn-disabled").attr("disabled", false);
                            } else {
                                $("#questionUp").next().html("请重新输入");
                                $('#upQuestion').addClass("layui-btn-disabled").attr("disabled", true);
                            }
                        }
                    })
                }

                Name();
                $("#questionUp").blur(function () {
                    Name();
                })
            }
        });

        /*
        * 监听修改按钮
        * */
        form.on('submit(updateQuestionFilter)', function (data) {
            //提交表单数据
            if (data.field.status === '' || data.field.status==null) {
                data.field.status = 0;
            } else {
                data.field.status = 1;
            }

            $.ajax({
                url: "${pageContext.request.contextPath}/questionSds/updateSds.do",
                type: "POST",
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
            //刷新表格数据
            myTable.reload({
                where: { //设定异步数据接口的额外参数，任意设
                    question: data.field.question
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
                    question: ""
                    , createBy: ""
                    //…
                }
                , page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
        })

    });
</script>
</html>
