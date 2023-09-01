<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp" %>
<html>
<head>
    <title>性格测试SCL报表统计</title>
</head>
<body>
<!-- 为 ECharts 准备一个定义了宽高的 DOM，必须定义宽高才可以显示 -->
<div style="width: 100%;height: 100%;" id="testerFpa"></div>
</body>
<script type="text/javascript">

        $.ajax({
            url: "${pageContext.request.contextPath}/viewTestResultScl/getAllScl.do",
            dataType: "json",
            type: "get",
            success: function (re) {
                var shopping = echarts.init(document.getElementById('testerFpa'), 'dark');

                // 指定图表的配置项和数据
                var optionShopping = {
                    title: {
                        text: 'SCL性格测试',
                        subtext: '测试人数：' + re.data.sum,
                        left: 'left'
                    },
                    tooltip: {},
                    legend: {
                        left: 'center',
                        data: ['人数']
                    },
                    xAxis: {
                        type: 'category',
                        data: ['躯体化', '强迫', '人际敏感', '抑郁', '焦虑', '敌对', '恐怖', '偏执', '精神病', '睡眠及饮食']
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
                            data: [re.data.a, re.data.b, re.data.c, re.data.d, re.data.e, re.data.f, re.data.g, re.data.h, re.data.i, re.data.j],
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
                                {value: re.data.a, name: '躯体化'},
                                {value: re.data.b, name: '强迫'},
                                {value: re.data.c, name: '人际敏感'},
                                {value: re.data.d, name: '抑郁'},
                                {value: re.data.e, name: '焦虑'},
                                {value: re.data.f, name: '敌对'},
                                {value: re.data.g, name: '恐怖'},
                                {value: re.data.h, name: '偏执'},
                                {value: re.data.i, name: '精神病'},
                                {value: re.data.j, name: '睡眠及饮食'},

                            ],
                            itemStyle: {
                                color: function (colors) {
                                    var colorList = [
                                        '#FF0000',
                                        '#FFD700',
                                        '#1E90FF',
                                        '#008000',
                                        '#FF0000',
                                        '#FFD700',
                                        '#1E90FF',
                                        '#008000',
                                        '#008000',
                                        '#C71585'];
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

