<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../common.jsp" %>
<html>
<head>
    <title>SAS报表统计</title>
    <script src="${pageContext.request.contextPath}/static/echarts/echarts.js"></script>
</head>
<body>
<!-- 为 ECharts 准备一个定义了宽高的 DOM，必须定                   义宽高才可以显示 -->
<div style="width: 100%;height: 100%;" id="shopping"></div>
</body>
<script type="text/javascript">
    layui.config({
        version: 1,
        base: 'echarts/' //这个就是你放Echart.js的目录
    }).use(['element', 'echarts', 'carousel'], function () {
        var element = layui.element,
            $ = layui.jquery,
            carousel = layui.carousel,
            echarts = layui.echarts;
        $.ajax({
            url:"${pageContext.request.contextPath}/viewTestResultSas/getCountColor.do",
            dataType:"json",
            type:"get",
            success:function (re) {
                var shopping = echarts.init(document.getElementById('shopping'),'dark');

                // 指定图表的配置项和数据
                var optionShopping = {

                    title: {
                        text: 'Sas性格测试',
                        subtext: '测试人数：'+(Number(re.data.normal)+Number(re.data.mild)+Number(re.data.moderate)+Number(re.data.severe)),
                        left: 'left'
                    },
                    tooltip: {},
                    legend: {
                        left: 'center',
                        data: ['人数']
                    },
                    xAxis: {
                        type: 'category',
                        data: ['正常', '轻度焦虑', '中度焦虑', '重度焦虑']
                    },
                    yAxis: {
                        type: 'value',
                        gridIndex:0
                    },
                    grid: { top: '50%' },

                    series: [
                        //折线图
                        {
                            name: '人数',
                            data: [re.data.normal,re.data.mild,re.data.moderate,re.data.severe],
                            type: 'line',
                            symbolSize: 10,
                            lineStyle: {
                                color: '#39c5bb',
                                width: 2,
                            },
                            itemStyle: {
                                color: '#66ccff'
                            },
                            smooth: true
                        },
                        //饼图
                        {
                            name: 'Access From',
                            type: 'pie',
                            radius: '25%',
                            center: ['50%', '20%'],
                            data: [
                                { value: re.data.normal, name: '正常'},
                                { value: re.data.mild, name: '轻度焦虑'},
                                { value: re.data.moderate, name: '中度焦虑'},
                                { value: re.data.severe, name: '重度焦虑'}
                            ],
                            itemStyle: {
                                normal: {//柱子颜色
                                    color: function (colors) {
                                        var colorList=[
                                            '#dc4242',
                                            '#e3e84c',
                                            '#4c67d2',
                                            '#69d54e',
                                            '#945FCF'];
                                        return colorList[colors.dataIndex];
                                    }

                                }
                            },
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
                shopping.setOption(optionShopping);
            }
        })
    });


</script>
</html>
