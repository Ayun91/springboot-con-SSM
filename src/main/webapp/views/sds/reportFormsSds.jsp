<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp" %>
<html>
<head>
    <title>抑郁测试SDS报表统计</title>
</head>
<body>
<!-- 为 ECharts 准备一个定义了宽高的 DOM，必须定义宽高才可以显示 -->
<div style="width: 100%;height: 100%;" id="testerFpa"></div>
</body>
<script type="text/javascript">
        $.ajax({
            url: "${pageContext.request.contextPath}/viewTestResultSds/queryColorCount.do",
            dataType: "json",
            type: "post",
            success: function (re) {
                var shopping = echarts.init(document.getElementById('testerFpa'), 'dark');

                // 指定图表的配置项和数据
                var optionShopping = {

                    title: {
                        text: 'Sds抑郁测试',
                        subtext: '测试人数：' + (Number(re.data.n) + Number(re.data.mi) + Number(re.data.mo) + Number(re.data.s)),
                        left: 'left'
                    },
                    tooltip: {},
                    legend: {
                        left: 'center',
                        data: ['人数']
                    },
                    xAxis: {
                        type: 'category',
                        data: ['正常', '轻度抑郁', '中度抑郁', '重度抑郁']
                    },
                    yAxis: {
                        type: 'value',
                        gridIndex: 0
                    },
                    grid: {top: '50%'},

                    series: [
                        //折线图
                        {
                            name: '人数',
                            data: [re.data.n, re.data.mi, re.data.mo, re.data.s],
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
                                {value: re.data.n, name: '正常'},
                                {value: re.data.mi, name: '轻度抑郁'},
                                {value: re.data.mo, name: '中度抑郁'},
                                {value: re.data.s, name: '重度抑郁'},
                            ],
                            itemStyle: {
                                color: function (colors) {
                                    var colorList = [
                                        '#FF0000',
                                        '#FFD700',
                                        '#1E90FF',
                                        '#008000'];
                                    return colorList[colors.dataIndex];
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

</script>
</html>
