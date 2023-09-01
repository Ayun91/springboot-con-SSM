<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp" %>
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
</style>
<body>
<input type="button" id="lookResult" class="layui-btn" value="点击查看结果">
<div id="app">
    <!-- 为 ECharts 准备一个定义了宽高的 DOM -->
    <div id="main" style="width: 100%;height:100%;"></div>
</div>

<script>
    $("#lookResult").click(function(){
        $.ajax({
            url: "${pageContext.request.contextPath}/viewTestResultScl/getFrontResults.do",
            data: {"testerId":"${sclTesterId}"},
            type: "GET",
            success: function (res) {
                var chartDom = document.getElementById('main');
                var myChart = echarts.init(chartDom);
                var option;
                option = {
                    legend: {
                        data: ['我的测试结果', '参考值']
                    },
                    radar: {
                        indicator: [
                            {name: 'body', max: 5},
                            {name: 'force', max: 5},
                            {name: 'interpersonal', max: 5},
                            {name: 'depressed', max: 5},
                            {name: 'anxious', max: 5},
                            {name: 'hostility', max: 5},
                            {name: 'terror', max: 5},
                            {name: 'paranoia', max: 5},
                            {name: 'paranoia', max: 5},
                            {name: 'sleep_diet', max: 5}
                        ]
                    },
                    series: [
                        {
                            name: 'Budget vs spending',
                            type: 'radar',
                            data: [
                                {
                                    value: [res.data.body, res.data.force, res.data.interpersonal, res.data.depressed, res.data.anxious, res.data.hostility, res.data.terror, res.data.paranoia, res.data.psychotic, res.data.sleepDiet],
                                    name: '我的测试结果'
                                },
                                {
                                    value: [2.43, 3.27, 3.46, 3.13, 2.82, 3.13, 2.52, 3.23, 2.71, 2.33],
                                    name: '参考值'
                                }
                            ]
                        }
                    ]
                };
                option && myChart.setOption(option);
            }
        })
    })



</script>
</body>
</html>