<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<script type="text/html" id="bardemo">
    <a href="#" class="layui-btn layui-btn-normal" lay-event="add"><i class="layui-icon layui-icon-addition" style="font-size: 18px; color: #FFFFFF;"></i>添加</a>
    <a href="#" class="layui-btn layui-btn-danger" lay-event="delete"><i class="layui-icon layui-icon-delete" style="font-size: 18px; color: #FFFFFF;"></i>删除</a>
</script>
<script id="status" type="text/html">
    {{#  if(d.status == 1){ }}
    <a  class="layui-btn layui-btn-xs layui-btn-normal">可用</a>
    {{#  } }}
    {{#  if(d.status == 0){ }}
    <a  class="layui-btn layui-btn-xs layui-btn-warm">禁用</a>
    {{#  } }}
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
    <form class="layui-form" action="" id="addForm" style="display: none" enctype="multipart/form-data">

        <div class="layui-form-item">
            <label class="layui-form-label">问题</label>
            <div class="layui-input-inline">
                <input type="text" name="question" lay-verify="required"
                       placeholder="请输入问题" autocomplete="off" class="layui-input" id="sclQuesNameAdd">
                <span style="color: red"></span>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项A</label>
            <div class="layui-input-inline">
                <input type="text" name="optionA" required lay-verify="required"
                       placeholder="请输入选项A" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项B</label>
            <div class="layui-input-inline">
                <input type="text" name="optionB" required lay-verify="required"
                       placeholder="请输入选项B" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项C</label>
            <div class="layui-input-inline">
                <input type="text" name="optionC" required lay-verify="required"
                       placeholder="请输入选项C" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项D</label>
            <div class="layui-input-inline">
                <input type="text" name="optionD" required lay-verify="required"
                       placeholder="请输入选项D" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项E</label>
            <div class="layui-input-inline">
                <input type="text" name="optionE" required lay-verify="required"
                       placeholder="请输入选项E" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">类型</label>
            <div class="layui-input-inline">
                <select name="type" lay-verify="required">
                    <option value="16">1、躯体化</option>
                    <option value="17">2、强迫</option>
                    <option value="18">3、人际关系</option>
                    <option value="19">4、抑郁</option>
                    <option value="20">5、焦虑</option>
                    <option value="21">6、敌对性</option>
                    <option value="22">7、恐怖</option>
                    <option value="3">8、偏执</option>
                    <option value="24">9、精神病性</option>
                    <option value="25">10、睡眠及饮食</option>
                </select>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">是否启用</label>
                <div class="layui-input-block">
                    <input type="checkbox" value="1" checked name="status" lay-skin="switch">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="addUser" id="addSub">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <!--修改-->
    <form class="layui-form" action="" id="updateForm" lay-filter="updateForm" style="display: none">
        <!--隐藏域提交id-->
        <input type="hidden" name="id" id="id"/>
        <div class="layui-form-item">
            <label class="layui-form-label">问题描述</label>
            <div class="layui-input-block">
                <input type="text" name="question" required lay-verify="required" placeholder="请输入问题描述" autocomplete="off"
                       class="layui-input" id="questionUp"><span style="color: red"></span>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项A</label>
            <div class="layui-input-inline">
                <input type="text" name="optionA" required lay-verify="required"
                       placeholder="请输入选项A" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项B</label>
            <div class="layui-input-inline">
                <input type="text" name="optionB" required lay-verify="required"
                       placeholder="请输入选项B" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项C</label>
            <div class="layui-input-inline">
                <input type="text" name="optionC" required lay-verify="required"
                       placeholder="请输入选项C" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项D</label>
            <div class="layui-input-inline">
                <input type="text" name="optionD" required lay-verify="required"
                       placeholder="请输入选项D" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选项E</label>
            <div class="layui-input-inline">
                <input type="text" name="optionE" required lay-verify="required"
                       placeholder="请输入选项E" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">类型</label>
            <div class="layui-input-inline">
                <select name="type" lay-verify="required">
                    <option value="16">1、躯体化</option>
                    <option value="17">2、强迫</option>
                    <option value="18">3、人际关系</option>
                    <option value="19">4、抑郁</option>
                    <option value="20">5、焦虑</option>
                    <option value="21">6、敌对性</option>
                    <option value="22">7、恐怖</option>
                    <option value="23">8、偏执</option>
                    <option value="24">9、精神病性</option>
                    <option value="25">10、睡眠及饮食</option>
                </select>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">是否启用</label>
                <div class="layui-input-block">
                    <input type="checkbox" value="1"  name="status" lay-skin="switch">
                </div>
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
                <button class="layui-btn" lay-submit lay-filter="formDemo"><i class="layui-icon layui-icon-search" style="font-size: 30px; color: #fff;"></i>搜索</button>
                <button type="reset" id="search_reset"  class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <table id="demo" lay-filter="test"></table>


</div>
<!--类型-->
<script type="text/html" id="type">

    {{# if (d.type=='16') { }}
    <span>SCL躯体化</span>
    {{# } else if(d.type == '17') { }}
    <span>SCL强迫症</span>
    {{# } else if(d.type == '18') { }}
    <span>SCL人际关系</span>
    {{# } else if(d.type == '19') { }}
    <span>SCL抑郁</span>
    {{# } else if(d.type == '20') { }}
    <span>SCL焦虑</span>
    {{# } else if(d.type == '21') { }}
    <span>SCL敌对性</span>
    {{# } else if(d.type == '22') { }}
    <span>SCL恐怖</span>
    {{# } else if(d.type == '23') { }}
    <span>SCL偏执</span>
    {{# } else if(d.type == '24') { }}
    <span>SCL精神病性</span>
    {{# } else if(d.type == '25') { }}
    <span>SCL睡眠及饮食</span>
    {{# } else { }}
    <span>未知类型</span>
    {{# } }}

</script>
<script type="text/html" id="toolEventDemo">
    <a class="layui-btn layui-btn-xs" lay-event="update"><i class="layui-icon layui-icon-edit" style="font-size: 30px; color: #fff;"></i>编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><i class="layui-icon layui-icon-delete" style="font-size: 30px; color: #fff;"></i>删除</a>
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

    layui.use(['table', 'form', 'jquery', 'util', 'upload'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;
        var util = layui.util;
        var upload = layui.upload;

        //渲染表格
        table.render({
            elem: '#demo'
            , height: 540
            , url: '${pageContext.request.contextPath}/questionScl/getAll.do' //数据接口
            , page: true //开启分页
            , limit: 9
            , limits: [3, 4, 5, 6, 7, 8,9,10]
            , toolbar: '#bardemo'
            , autoSort: true
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'id', title: 'ID', width: 80, sort: true}
                , {field: 'question', title: '题目', width: 150, sort: true}
                , {field: 'optionA', title: '选项A', width: 90, sort: true}
                , {field: 'optionB', title: '选项B', width: 90, sort: true}
                , {field: 'optionC', title: '选项C', width: 90, sort: true}
                , {field: 'optionD', title: '选项D', width: 90, sort: true}
                , {field: 'optionE', title: '选项E', width: 90, sort: true}
                , {field: 'type', title: '类型', width: 90, sort: true,toolbar: "#type"}
                , {field: 'status', title: '状态', width: 90, sort: true,templet: '#status'}
                , {field: 'createTime', title: '创建时间', width: 170, sort: true}
                , {field: 'createBy', title: '创建人', width: 100, sort: true}
                , {field: 'updateTime', title: '更改时间', width: 170, sort: true}
                , {field: 'updateBy', title: '更改人', width: 100, sort: true}
                , {title: '操作', fixed: 'right', width: 200, templet: '#toolEventDemo'}
            ]]
        });

        //添加
        form.on('submit(addUser)', function (data) {
            $.ajax({
                url: "${pageContext.request.contextPath}/questionScl/saveQuestionScl.do",
                type: "POST",
                data: JSON.stringify(data.field),
                contentType: 'application/json',
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
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    question: data.field.question //排序字段
                    , createBy: data.field.createBy//排序方式
                }
                ,
                page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
            return false;
        });
        ///重置条件查询表单，刷新table数据
        $("#search_reset").click(function () {
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    question: ""
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
                url: "${pageContext.request.contextPath}/questionScl/updateQuestionScl.do",
                type: "PUT",
                data: JSON.stringify(data.field),
                // headers: {'content-type': 'application/json'},
                contentType: 'application/json;charset=utf-8',
                // dataType: "JSON",
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

        // 头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'add':
                    layer.open({
                        type: 1,
                        content: $('#addForm') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                        , area: ['550px', '450px']
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
                        console.log(ids)
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/questionScl/deleteQuestionScl.do?ids=" + ids,
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
            if (layEvent === 'update') {
                form.val("updateForm", { //formTest 即 class="layui-form" 所在元素属性 lay-filter="" 对应的值

                    "id": data.id
                    , "question": data.question
                    , "optionA": data.optionA
                    , "optionB": data.optionB
                    , "optionC": data.optionC
                    , "optionD": data.optionD
                    , "optionE": data.optionE
                    , "type": data.type
                    , "status": data.status
                });
                $('#avatar2').attr('src', data.avatar);
                layer.open({
                    type: 1,
                    content: $('#updateForm') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    , area: ['550px', '450px']
                });
                /*
           * 修改计划唯一性校验
              * */
                function Name() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/questionScl/questionName.do",
                        data: {question: $("#questionUp").val(),id:$("#id").val()},
                        dataType: "json",
                        type: "get",
                        success: function (re) {
                            if (re.code == 0) {
                                $("#questionUp").next().html("未重名");
                                $('#subUp').removeClass("layui-btn-disabled").attr("disabled", false);
                            } else {
                                $("#questionUp").next().html("请重新输入");
                                $('#subUp').addClass("layui-btn-disabled").attr("disabled", true);
                            }
                        }
                    })
                }
                Name();
                $("#questionUp").blur(function () {
                    Name();
                })
            } else if (layEvent === 'del') { //删除
                layer.confirm('确定删除吗？', function (index) {

                    $.ajax({
                        url: "${pageContext.request.contextPath}/questionScl/deleteQuestionScl.do?ids=" + data.id,
                        type: "DELETE",
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
                    });
                })
            }

        });


        /*
       *
       * 添加计划 唯一性校验
       * */
        $("#sclQuesNameAdd").blur(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/questionScl/questionName.do",
                data: {question: $("#sclQuesNameAdd").val()},
                dataType: "json",
                type: "get",
                success: function (re) {
                    if (re.code == 0) {
                        $("#sclQuesNameAdd").next().html(re.msg);
                        $('#addSub').removeClass("layui-btn-disabled").attr("disabled", false);
                    } else {
                        $("#sclQuesNameAdd").next().html(re.msg);
                        $('#addSub').addClass("layui-btn-disabled").attr("disabled", true);
                    }
                }
            })
        })

    })
</script>
</body>
</html>
