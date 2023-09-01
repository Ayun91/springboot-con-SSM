<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<script type="text/html" id="bardemo">
    <a href="#" class="layui-btn layui-btn-danger" lay-event="delete">删除</a>
</script>
<style>
    #app {
        width: 1319px;
        margin: 0 auto;
    }
    .main-div {
        width: 550px;
    }
    @media screen and (max-device-width: 1000px) {
        .main-div {
            width: 100%;
        }
    }
</style>
<body>
<div id="app">

    <!--条件查询-->
    <form class="layui-form" action="" style="margin-top: 10px">
        <div class="layui-inline">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="name" placeholder="请输入测试者姓名" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">测试名称</label>
            <div class="layui-input-inline">
                <%--<input type="text" name="testName" placeholder="请输入测试计划" id="testNameSelect" class="layui-input">--%>
                <select placeholder="请选择测试名称" id="testNameSelect" name="testPlanId"></select>
            </div>
        </div>
        <div class="layui-inline">
            <div class="layui-input-inline">
                <button class="layui-btn" lay-submit lay-filter="formDemo">搜索</button>
                <button type="reset" id="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <%--饼图--%>
    <div id="lookForm" style="width: 100%;height: 100%; display: none;">
        <fieldset class="layui-elem-field">
            <input id="character" value="黄" hidden>
            <div class="layui-row">
                <div class="layui-col-md7">
                    <div class="main-div"  align="auto">
                        <div style="background-color:#fcf4ed;border-radius:40px 40px 0 0;z-index: 2;padding: 40px 20px 20px 20px;color: #41464B">
                            <h1 style="text-align:center;line-height: 60px;font-size: 30px;font-weight: 600;color: #7a2114;">
                                测评报告预览</h1>
                            <div style="background: rgba(87,144,255,.2);padding: 20px;text-align: center;margin-bottom: 20px"
                                 id="div1">

                            </div>
                            <div id="shopping" style="width:500px;height:500px;"></div>

                            <div style="background: rgba(87,144,255,.2);padding: 20px;margin-top: 20px;text-align: center"
                                 id="div2">

                            </div>
                            <div style="background: white;padding: 20px;margin-top: 20px; text-align: center" id="div3">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>


    </div>

    <table id="demo" lay-filter="test"></table>
</div>

<script type="text/html" id="toolEventDemo">
    <a class="layui-btn  layui-btn-xs" lay-event="look">查看</a>
</script>
<script>

    layui.use(['table', 'form', 'jquery'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;

        //第一个实例
        table.render({
            elem: '#demo'
            , height: 541
            , url: '${pageContext.request.contextPath}/viewTestResultFpa/getAll.do' //数据接口
            , page: true //开启分页
            , limit: 7
            , limits: [3, 4, 5, 6, 7, 8, 10]
            , toolbar: '#bardemo'
            , autoSort: true
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'testerId', title: '测试者Id', width: 110, sort: true}
                , {field: 'name', title: '测试者名称', width: 130, sort: true}
                , {field: 'testName', title: '测试名称', width: 150, sort: true}
                , {field: 'phone', title: '手机号', width: 150, sort: true}
                , {field: 'redCount', title: '红色得分', width: 100, sort: true}
                , {field: 'blueCount', title: '蓝色得分', width: 100, sort: true}
                , {field: 'yellowCount', title: '黄色得分', width: 100, sort: true}
                , {field: 'greenCount', title: '绿色得分', width: 100, sort: true}
                , {field: 'createTime', title: '测试时间', width: 180, sort: true}
                , {title: '操作', fixed: 'right', width: 180, templet: '#toolEventDemo'}
            ]]
        });

        //查询
        form.on('submit(formDemo)', function (data) {
            table.reload('demo', {
                where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                    name: data.field.name
                    , testPlanId: data.field.testPlanId
                    , testName: data.field.testName
                }
            });
            return false;
        });

        // 头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'delete':
                    if (data.length === 0) {
                        layer.msg('请选择一行');
                    } else {
                        var ids = [];
                        for (var i = 0; i < data.length; i++) {
                            let id = data[i].testerId
                            ids[i] = id;
                        }
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/viewTestResultFpa/deleteResult.do?ids=" + ids,
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
            if (layEvent === 'look') {
                        var red = data.redCount
                        var blue = data.blueCount
                        var yellow = data.yellowCount
                        var green = data.greenCount
                        var myChart = echarts.init(document.getElementById('shopping'));
                        var option = {
                            title: {
                                text: 'FPA性格测试',
                                left: 'center'
                            },
                            tooltip: {
                                trigger: 'item'
                            },
                            legend: {
                                orient: 'vertical',
                                left: 'left'
                            },
                            series: [
                                {
                                    name: 'Fpa性格占比',
                                    type: 'pie',
                                    radius: '70%',
                                    data: [
                                        {value: red, name: '红色性格', itemStyle: {color: '#c51313'}},
                                        {value: blue, name: '蓝色性格', itemStyle: {color: '#1061ba'}},
                                        {value: yellow, name: '黄色性格', itemStyle: {color: '#f8ff14'}},
                                        {value: green, name: '绿色性格', itemStyle: {color: '#2dcc00'}},
                                    ],
                                    emphasis: {
                                        itemStyle: {
                                            shadowBlur: 10,
                                            shadowOffsetX: 0,
                                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                                        }
                                    }
                                }
                            ]
                        };

                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(option);

                        var a = [blue, red, yellow, green];

                        function f(a, b) {  //排序函数
                            return (a - b);  //返回比较参数
                        }

                        a = a.sort(f)
                        if (a[a.length - 1] === yellow) {
                            color = 1
                        } else if (a[a.length - 1] === red) {
                            color = 2
                        } else if (a[a.length - 1] === blue) {
                            color = 3
                        } else {
                            color = 4
                        }
                        $.ajax({
                            url: "${pageContext.request.contextPath}/viewTestResultFpa/div.do",
                            type: "POST",
                            dataType: "JSON",
                            data: {id: color},
                            success: function (ret) {
                                $('#div1').html(ret.data.div1)
                                $('#div2').html(ret.data.div2)
                                $('#div3').html(ret.data.div3)
                            }
                        });

                layer.open({
                    title: '性格测试结果图示',
                    type: 1,
                    content: $('#lookForm'), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                    area: ['571px', '600px']
                });
            }
        });
        function makeMpdf(pdfName) {
            if (confirm("您确认下载该PDF文件吗?")) {
                $("#ceshi").css('background-color', '#FFF');
                var element = $("#ceshi"); // 这个dom元素是要导出pdf的范围div
                var w = element.width();    // 获得该容器的宽
                var h = element.height();    // 获得该容器的高
                var offsetTop = element.offset().top;    // 获得该容器到文档顶部的距离
                var offsetLeft = element.offset().left;    // 获得该容器到文档最左的距离
                var canvas = document.createElement("canvas");
                var abs = 0;
                var win_i = $(window).width();    // 获得当前可视窗口的宽度（不包含滚动条）
                var win_o = window.innerWidth;    // 获得当前窗口的宽度（包含滚动条）
                if (win_o > win_i) {
                    abs = (win_o - win_i) / 2;    // 获得滚动条长度的一半
                }
                canvas.width = w;    // 将画布宽&&高放大4倍
                canvas.height = h;
                var context = canvas.getContext("2d");
                context.scale(1, 1);
                context.translate(-offsetLeft - abs, -offsetTop);
                //这里默认横向没有滚动条的情况，因为offset.left(),有无滚动条的时候存在差值，因此translate的时候，要把这个差值去掉
                html2canvas(element, {
                    allowTaint: true,
                    taintTest: true,
                    canvas: canvas,
                    // dpi: 172,//导出pdf清晰度
                    onrendered: function (canvas) {
                        var contentWidth = canvas.width;
                        var contentHeight = canvas.height;
                        //一页pdf显示html页面生成的canvas高度;
                        var pageHeight = contentWidth;
                        //未生成pdf的html页面高度
                        var leftHeight = contentHeight;
                        //页面偏移
                        var position = 0;
                        //a4纸的尺寸[595.28,841.89]，html页面生成的canvas在pdf中图片的宽高
                        var imgWidth = 595.28;
                        var imgHeight = 592.28 / contentWidth * contentHeight;
                        var pageData = canvas.toDataURL('image/jpeg', 1.0);
                        var pdf = new jsPDF('', 'pt', [contentWidth, contentHeight]);
                        //有两个高度需要区分，一个是html页面的实际高度，和生成pdf的页面高度(841.89)
                        //当内容未超过pdf一页显示的范围，无需分页

                        pdf.addImage(pageData, 'JPEG', 0, 0, contentWidth, contentHeight);

                        pdf.save(pdfName + '.pdf');
                    }
                });
            }
        }
        $.ajax({
            url: "${pageContext.request.contextPath}/testPlanFpa/getAll.do",
            data:{page: 1,limit :10000},
            type: "get",
            dataType: "JSON",
            success: function (ret) {
                if (ret.code == 0) {
                    var htmlStr = "<option value=''>请选择测试名称</option>";
                    for (let i = 0; i < ret.data.length; i++) {
                        htmlStr += "<option value=" + ret.data[i].id + "> " + ret.data[i].testName + "</option>"
                    }
                    $("#testNameSelect").html(htmlStr);
                    //重新渲染表单
                    layui.use('form', function () {
                        form.render('select');
                    })
                }
            }
        });
    })
</script>
</body>
</html>
