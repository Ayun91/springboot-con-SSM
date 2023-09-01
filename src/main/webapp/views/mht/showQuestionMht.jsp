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
    <!--添加-->
    <form class="layui-form" action="" id="addUserForm" style="display: none" enctype="multipart/form-data">

        <div class="layui-form-item">
            <label class="layui-form-label">问题</label>
            <div class="layui-input-inline">
                <input type="text" name="question" required lay-verify="required"
                       placeholder="请输入问题" autocomplete="off"
                       class="layui-input" id="questionAdd"> <span class="tips" style="color: red"></span>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">题目类型</label>
            <div class="layui-input-inline">
                <select name="type" lay-filter="type" id="adddictionary">
                    <%--                    js填充题目类型下拉选项--%>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项A</label>
            <div class="layui-input-inline">
                <input type="text" name="optionTrue" required lay-verify="required"
                       placeholder="是" autocomplete="off" value="1"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项B</label>
            <div class="layui-input-inline">
                <input  type="text" name="optionFalse" required lay-verify="required"
                       placeholder="否" autocomplete="off" value="0"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
<%--            <label class="layui-form-label">类型</label>--%>

            <div class="layui-form-item">
                <label class="layui-form-label">是否禁用</label>
                <div class="layui-input-block">
                        可用<input type="radio" value="1" name="status" checked lay-skin="switch">
                        禁用<input type="radio" value="0" name="status" lay-skin="switch">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="addUser" id="addQuestion">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <!--修改-->
    <form class="layui-form" action="" id="updateForm" lay-filter="updateForm" style="display: none">
        <!--隐藏域提交id-->
        <input type="hidden" name="id" id="planId"/>

        <div class="layui-form-item">
            <label class="layui-form-label">问题</label>
            <div class="layui-input-inline">
                <input type="text" name="question" required lay-verify="required"
                       placeholder="请输入问题" autocomplete="off" id="testnamerequired"
                       class="layui-input"><span class="tips" style="color: red"></span>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">题目类型</label>
            <div class="layui-input-inline">
                <select name="type" lay-filter="type" id="dictionary">
                    <%--                    js填充题目类型下拉选项--%>
                </select>
            </div>
        </div>

     <div style="display: none">
         <div class="layui-form-item">
             <label class="layui-form-label">选项</label>
             <div class="layui-input-inline">
                 <input type="text" name="optionTrue" required lay-verify="required"
                        placeholder="是" autocomplete="off" value="1"
                        class="layui-input">
             </div>
         </div>
         <div class="layui-form-item">
             <label class="layui-form-label">选项</label>
             <div class="layui-input-inline">
                 <input type="text" name="optionFalse" required lay-verify="required"
                        placeholder="否" autocomplete="off" value="0"
                        class="layui-input">
             </div>
         </div>
     </div>


        <div class="layui-form-item">
<%--            <label class="layui-form-label">类型</label>--%>
            <div class="layui-form-item">
                <label class="layui-form-label">是否禁用</label>
                <div class="layui-input-block">
                    可用<input type="radio" value="1" checked name="status" lay-skin="switch">
                    禁用<input type="radio" value="0" name="status" lay-skin="switch">
                </div>
            </div>
        </div>


        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="update" id="questionUpdate">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <!--条件查询-->
    <form class="layui-form" action="" style="margin-top: 10px">
        <div class="layui-inline">
            <label class="layui-form-label">题目</label>
            <div class="layui-input-inline">
                <input type="text" name="question" placeholder="请输入题目" class="layui-input">
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
                <button class="layui-btn" lay-submit lay-filter="formDemo"><i class="layui-icon layui-icon-search"
                                                                              style="font-size: 30px; color: #fff;"></i>搜索
                </button>
                <button type="reset" id="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <table id="demo" lay-filter="test"></table>


</div>

<script type="text/html" id="toolEventDemo">
    <a class="layui-btn layui-btn-xs" lay-event="update"><i class="layui-icon layui-icon-edit"
                                                            style="font-size: 30px; color: #fff;"></i>编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><i class="layui-icon layui-icon-delete"
                                                                          style="font-size: 30px; color: #fff;"></i>删除</a>
</script>
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
            , height: 550
            , url: '${pageContext.request.contextPath}/questionMht/getAll.do' //数据接口
            , page: true
            , limit: 10
            , limits: [5, 10, 15, 20, 25, 30, 100]
            //关闭前端的自动排序，
            , toolbar: '#bardemo'
            , autoSort: true
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'},
                {field: 'id', title: 'ID', width: 50, fixed: 'center', sort: true}
                , {field: 'question', title: '问题', width: 250}
                , {
                    field: 'optionTrue', title: '选项A', width: 80,
                    templet: function (d) {
                        if (d.optionTrue == 1) {
                            return "<span>是</span>";

                        }
                    }
                }
                , {
                    field: 'optionFalse', title: '选项B', width: 80,
                    templet: function (d) {
                        if (d.optionFalse == 0) {
                            return "<span>否</span>";
                        }
                    }
                }
                , {
                    field: 'status', title: '状态', width: 100,
                    templet: function (d) {
                        if (d.status == 1) {
                            return "<span class='layui-btn layui-btn-xs'>可用</span>";
                        }else{
                            return "<span class='layui-btn layui-btn-danger layui-btn-xs'>禁用</span>";
                        }
                    }
                }
                , {field: 'type', title: '题目类型', width: 100,hide:true}
                , {field: 'dictionaryName', title: '题目类型', width: 100}
                , {
                    field: 'createTime', title: '创建时间', width: 170, sort: true,
                    templet: function (d) {
                        return layui.util.toDateString(d.createTime, 'yyyy-MM-dd HH:mm:ss');
                    }
                }
                , {field: 'createBy', title: '创建者', width: 100}
                , {
                    field: 'updateTime', title: '修改时间', width: 170, sort: true, templet: function (d) {
                        return layui.util.toDateString(d.updateTime, 'yyyy-MM-dd HH:mm:ss');
                    }
                }
                , {field: 'updateBy', title: '修改者', width: 100}
                , {title: '操作', fixed: 'right', width: 200, templet: '#toolEventDemo'}
            ]]

        });

        //添加
        form.on('submit(addUser)', function (data) {
            console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
            $.ajax({
                url: "${pageContext.request.contextPath}/questionMht/save.do",
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
        $("#questionAdd").blur(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/questionMht/repetition.do",
                data: {question: $("#questionAdd").val()},
                dataType: "json",
                type: "get",
                success: function (re) {
                    if (re.code == 0) {
                        $("#questionAdd").next().html("未重名");
                        $('#addQuestion').removeClass("layui-btn-disabled").attr("disabled", false);
                    } else {
                        $("#questionAdd").next().html("请重新输入");
                        $('#addQuestion').addClass("layui-btn-disabled").attr("disabled", true);
                    }
                }
            })
        })
        //查询
        form.on('submit(formDemo)', function (data) {
            console.log(data)
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    question: data.field.question //排序字段
                    , createBy: data.field.createBy//排序方式
                }
            });
            return false;
        });
        //修改
        form.on('submit(update)', function (data) {
            $.ajax({
                url: "${pageContext.request.contextPath}/questionMht/update.do",
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
                    $(".tips").html("");
                    $('#addQuestion').removeClass("layui-btn-disabled").attr("disabled", false);
                    $("#questionAdd").val("")
                    //添加下拉框
                    $.ajax({
                        url: "${pageContext.request.contextPath}/questionMht/getDictionary.do",
                        type: "post",
                        dataType: "json",
                        success: function (data) {
                            //将dept表中的数据添加到下拉列表中去
                            if (data.code == 0) {
                                var htmlStr = "";
                                for (let i = 0; i < data.data.length; i++) {
                                    htmlStr += "<option value = " + data.data[i].dictionaryId + ">" + data.data[i].dictionaryName + "<option>"
                                }
                                $("#adddictionary").html(htmlStr);
                                layui.use('form', function () {
                                    var form = layui.form;
                                    form.render('select');
                                });
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
                            let id = data[i].id;
                            ids[i] = id;
                        }
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/questionMht/delete.do?ids=" + ids,
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
        // 单元格工具事件
        table.on('tool(test)', function (obj) { // 注：test 是 table 原始标签的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的 DOM 对象（如果有的话）
            console.log(data)
            if (layEvent === 'update') {
                $(".tips").html("");
                $('#questionUpdate').removeClass("layui-btn-disabled").attr("disabled", false);
                //添加下拉框
                $.ajax({
                    url: "${pageContext.request.contextPath}/questionMht/getDictionary.do",
                    type: "post",
                    dataType: "json",
                    success: function (data) {
                        //将dept表中的数据添加到下拉列表中去
                        if (data.code == 0) {
                            var htmlStr = "";
                            for (let i = 0; i < data.data.length; i++) {
                                htmlStr += "<option value = " + data.data[i].dictionaryId + ">" + data.data[i].dictionaryName + "<option>"
                            }
                            $("#dictionary").html(htmlStr);
                            layui.use('form', function () {
                                var form = layui.form;
                                form.render('select');
                            });
                        }
                    }
                });
                layer.open({
                    type: 1,
                    content: $('#updateForm') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    , area: ['500px', '400px']
                });
            } else if (layEvent === 'del') { //删除
                layer.confirm('确定删除吗？', function (index) {

                    $.ajax({
                        url: "${pageContext.request.contextPath}/questionMht/delete.do?ids=" + data.id,
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
            form.val("updateForm", { //formTest 即 class="layui-form" 所在元素属性 lay-filter="" 对应的值

                "id": data.id
                , "question": data.question
                , "optionTrue": data.optionTrue
                , "optionFalse": data.optionFalse

                , "type": data.type
                , "status": data.status
            });
            $('#avatar2').attr('src', data.avatar);
        });

        $("#testnamerequired").blur(function(){
            var testName = $("#testnamerequired").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/questionMht/repetition.do"
                ,data:{question:testName ,id :$("#planId").val()}
                ,type: "GET",
                success: function (re) {
                    if (re.code == 0) {
                        // $("#testnamerequired").next().html("测试名可用");
                        $('#showUpdate').removeClass("layui-btn-disabled").attr("disabled", false);
                    } else {
                        $("#testnamerequired").next().html("测试名已经存在");
                        $('#showUpdate').addClass("layui-btn-disabled").attr("disabled", true);
                    }
                }
            })
        })

        //重置查询条件
        $("#reset").click(function () {
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    question: "" //第一个查询条件
                    ,createBy: "" //第一个查询条件
                },
                page: {
                    curr: 1
                    //重新从第 1 页开始
                },
            });
        });
    })
</script>
</body>
</html>
