<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/9/5
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common.jsp"%>
<html>
<head>
    <title>Title</title>

</head>
<body>
<!-- 为 ECharts 准备一个定义了宽高的 DOM -->
<div id="main" style="width: 100%;height:100%;"></div>
<script type="text/javascript">

    $.ajax({
        url: '${pageContext.request.contextPath}/viewTestResultFpa/getCountColor.do',
        type: "get",
        success: function (ret) {
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main'));
            // 指定图表的配置项和数据
            var option = {
                title: {
                    text: 'Fpa性格测试',
                    subtext: '测试人数：' + (Number(ret.data.red) + Number(ret.data.yellow) + Number(ret.data.blue) + Number(ret.data.green) + Number(ret.data.f)),
                    left: 'left'
                },
                tooltip: {},
                legend: {
                    data: ['人数']
                },
                xAxis: {
                    data: ['红色性格', '黄色性格', '蓝色性格', '绿色性格','复合性格']
                },
                yAxis: {},
                series: [
                    {
                        name: '人数',
                        type: 'bar',
                        data: [ret.data.red,ret.data.yellow,ret.data.blue,ret.data.green,ret.data.f]
                    }
                ]
            };
            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);
        }})



</script>
</body>
</html>
