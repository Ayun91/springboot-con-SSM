<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/9/5
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<div id="show" style="width: 100%;height: 60% ">
    <span id="bb">MHT测试人数</span><span></span>
    <div style="width: 50%;height: 350px;color: pink; margin: auto;" id="shopping"></div>
    <div style="width: 100%;height: 350px;color: pink; margin: auto;" id="shop"></div>
</div>
<script>
  /*  layui.use(['form', 'layer', 'jquery'], function () {
        var form = layui.form;
        var layer = layui.layer;
        var $ = layui.jquery;
        console.log($("#type").val())
        console.log($("#testerId").val())
*/
        $.ajax({
            url: '${pageContext.request.contextPath}/viewsTestResultMht/getPersonality.do',
            type: "get",
            success: function (ret) {
                if (ret.code == 0) {
                    console.log(ret)
                    // var effect = obj.data.effect;//效果评估
                    var allscore = ret.data[0].allscore;//总分
                    var learnAnxiety = ret.data[0].learnAnxiety;//学习焦虑
                    var person = ret.data[0].person;//对人焦虑
                    var lonely = ret.data[0].lonely;//孤独焦虑
                    var blame = ret.data[0].blame;//自责
                    var allergy = ret.data[0].allergy;//过敏焦虑
                    var body = ret.data[0].body;//身体焦虑
                    var terror = ret.data[0].terror;//恐怖焦虑
                    var impulse = ret.data[0].impulse;//冲动焦虑
                    var effect = ret.data[0].effect;//冲动焦虑
                    var myChart = echarts.init(document.getElementById('shopping'));
                    total = ret.data[0].total;
                    $("#bb").next().html(total);
                    var myChart = echarts.init(document.getElementById('shopping'));
                    var option;
                    option = {
                        color: ['red', 'yellow'],
                        title: {
                            text: 'MHT测试结果统计'
                        },
                        legend: {
                            data: ['不合格', '总人数']
                        },
                        radar: {
                            indicator: [
                                {name: '效度评估', max: total},
                                {name: '学习焦虑', max: total},
                                {name: '对人焦虑', max: total},
                                {name: '孤独倾向', max: total},
                                {name: '自责倾向', max: total},
                                {name: '过敏倾向', max: total},
                                {name: '身体症状', max: total},
                                {name: '恐怖倾向', max: total},
                                {name: '冲动倾向', max: total}
                            ],
                            center: ['50%', '50%'],
                            radius: 120,
                            axisName: {
                                color: '#fff',
                                backgroundColor: '#666',
                                borderRadius: 3,
                                padding: [3, 5]
                            }
                        },
                        series: [


                            {
                                name: 'Budget vs spending',
                                type: 'radar',//雷达图类型
                                data: [
                                    {
                                        value: [effect,learnAnxiety, person, lonely, blame, allergy, body, terror, impulse],
                                        name: '不合格',
                                        lineStyle: {
                                            type: 'dashed'
                                        },

                                        label: {
                                            show: true,
                                            formatter: function (params) {
                                                return params.value;
                                            }
                                        }
                                    },
                                    {
                                        value: [total, total, total, total, total, total, total, total, total],
                                        name: '总人数',
                                        label: {
                                            show: true,
                                            formatter: function (params) {
                                                return params.value;
                                            }
                                        }
                                    }
                                ]
                            }
                        ]
                    };
                    myChart.setOption(option);
                    var colors = ['red', 'green', 'blue', 'pink', 'green']
                    var myChart = echarts.init(document.getElementById('shop'));
                    var optio = {
                        color: colors,
                        xAxis: {
                            type: 'category',
                            data: ['效度评估', '学习焦虑', '对人焦虑', '孤独倾向', '自责倾向', '过敏倾向', '身体症状', '恐怖倾向', '冲动倾向'],
                            center: ['100%', '50%'],
                            axisLine: {
                                lineStyle: {
                                    color: colors[1]
                                }
                            },
                        },
                        yAxis: {
                            type: 'value',
                            axisLine: {
                                lineStyle: {
                                    color: colors[0]
                                }
                            },
                        },
                        series: [
                            {
                                data: [effect,learnAnxiety, person, lonely, blame, allergy, body, terror, impulse],
                                type: 'line',
                                label: {
                                    show: true,

                                },
                                smooth: true
                            }
                        ],
                    }
                    myChart.setOption(optio);
                }
            }
        })
    // })

</script>
</body>

</html>
