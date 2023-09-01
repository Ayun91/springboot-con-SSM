<%--
  Created by IntelliJ IDEA.
  User: 15890741124
  Date: 2022/9/5
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="${pageContext.request.contextPath}/static/echarts/echarts.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/static/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MHT结果展示</title>
    <style>
        html,
        body {
            color: pink;
            background: rgba(2, 2, 1, 0.93);
            margin: 0;
            padding: 0;
        }

        canvas {
            width: 100%;
            height: 100%;
            position: absolute;
        }

        /* Demo Buttons Style */
        .codrops-demos {
            font-size: 0.8em;
            text-align: center;
            position: absolute;
            z-index: 99;
            width: 96%;
        }

        .codrops-demos a {
            display: inline-block;
            margin: 0.35em 0.1em;
            padding: 0.5em 1.2em;
            outline: none;
            text-decoration: none;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 700;
            border-radius: 2px;
            font-size: 110%;
            border: 2px solid transparent;
            color: #fff;
        }

        .codrops-demos a:hover,
        .codrops-demos a.current-demo {
            border-color: #383a3c;
        }

        /*form表单*/
        .layui-form {
            width: 100%;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 100%;
            height: 700px;
            max-height: 700px;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            margin: auto;
            padding: 20px;
            z-index: 130;
            border-radius: 8px;
            background-color: rgba(255, 255, 255, 0.11);
            font-size: 16px;
            border: red;
            overflow: auto;
        }

        .contain {
            bottom: 0;
            right: 0;
            margin: auto;
            padding: 20px;
            z-index: 130;
            border-radius: 8px;
            background-color: rgba(255, 255, 255, 0.11);
            font-size: 16px;
            overflow: hidden;
        }

        .topic {
            text-align: center;
            color: #ffffff;
            font-size: 25px;
            font-weight: normal;
        }

        .my-form-item {
            margin: 25px -50px;
            background-color: rgba(0, 0, 0, 0);
        }

        .my-input {
            border-radius: 45px;
            width: 300px;
            height: 40px;
            font-size: 15px;
            color: white;
            background-color: rgba(255, 255, 255, 0);
            border: rgba(255, 255, 255, 0.2) 2px solid;
            text-align: center;
        }

        .mine-input {
            border-radius: 45px;
            width: 300px;
            height: 40px;
            font-size: 15px;
            border: rgba(0, 0, 0, 0.5) 2px solid;
            text-align: center;
        }

        .layui-btn {
            border-radius: 45px;
            width: 300px;
            height: 40px;
            font-size: 15px;
            color: white;
            background-color: rgba(0, 0, 0, 0);
            border: rgba(255, 255, 255, 0.2) 2px solid;
        }
        .font-set{
            font-size: 13px;
            text-decoration: none;
            margin-left: 100px;
            color: white;
        }

        /*a:hover{*/
        /*    text-decoration: underline;*/
        /*}*/
        @media screen and (max-device-width: 600px) {

            .container {
                width: 100%;
                margin-left: 0;
                margin-right: 0;

            }

            .my-form-item {
                margin: 25px -100px;
                background-color: rgba(0, 0, 0, 0);
            }
        }

        #show {
            /*border: 4px solid cornflowerblue;*/
            margin: 0 auto;
            font-family: 华文行楷;
            font-size: 30px;
            /*绝对定位也行，但是父也不占位。包含块布局的时候一般父相对  父相子绝*/
        }

        #bb {
            width: 200px;
            height: 80px;
            color: pink;
            margin:10px auto;
            line-height: 80px;
        }

    </style>
</head>
<body>

<canvas width="1536" height="754"></canvas>

<div class="container">
    <h1 style="color: red;text-align: center;font-size: 50px ">${errorMsg}</h1>
    <div id="show" style="width: 100%;height: 60% ">
        <div id="bb">MHT测试结果</div>
        <div style="width: 40%;min-width: 350px; height: 350px;color: pink; margin: auto;background-color: rgba(0,0,0,0.2)" id="shopping"> </div>
        <div style="width: 40%;margin: auto;" id="explain"></div>

    </div>
</div>


<script>
    layui.use(['form', 'layer', 'jquery'], function() {
        var form = layui.form;
        var layer = layui.layer;
        var $ = layui.jquery;
        $.ajax({
            url: '${pageContext.request.contextPath}/viewsTestResultMht/getReport.do',
            //响应的数据类型
            dataType: "JSON",
            type: "GET",
            data:{
                testerId: "${mhtTesterId}"
            }
            //异步请求
            // async: true,
            //成功的回调
            , success: function (data) {
                if (data.code == 0) {
                    var body = data.data.body,
                        study=data.data.learnAnxiety,
                        people=data.data.person,
                        loneliness =data.data.lonely,
                        remorse = data.data.blame,
                        allergies = data.data.allergy,
                        terror = data.data.terror,
                        impulsion = data.data.impulse
                    total = data.data.total;

                    var myChart = echarts.init(document.getElementById('shopping'));
                    var option = {
                        color: ['red', 'yellow'],
                        title: {
                            text: 'MHT心理测试'
                        },
                        legend: {
                            data: ['你的成绩', '标准得分']
                        },
                        radar: {
                            // shape: 'circle',
                            indicator: [
                                {name: '学习焦虑', max: 15},
                                {name: '对人焦虑', max: 10},
                                {name: '孤独倾向', max: 10},
                                {name: '自责倾向', max: 10},
                                {name: '过敏倾向', max: 10},
                                {name: '身体症状', max: 15},
                                {name: '恐怖倾向', max: 10},
                                {name: '冲动倾向', max: 10}
                            ],
                            // center: ['75%', '50%'],
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
                                        value: [study, people, loneliness, remorse, allergies, body, terror, impulsion],
                                        name: '你的成绩',
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
                                        value: [8, 8, 8, 8, 8, 8, 8, 8],
                                        name: '标准得分',
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

                    // let total =  body+ study+people+loneliness +remorse+allergies+terror+impulsion;
                    var htmlStr = "";
                    if (body > 8) {
                        htmlStr += "<div><h3 align='center'>身体症状</h3>&nbsp;&nbsp;&nbsp;&nbsp;你在极度焦虑的时候，会出现呕吐失眠、小便失禁等明显症状。这类被试必须接受为他制定的有针对性的特别指导计划。 </div>"
                    }
                    if (study > 8) {
                        htmlStr += "<div><h3 align='center'>学习焦虑</h3>&nbsp;&nbsp;&nbsp;&nbsp;你对考试怀有恐惧心理，无法安心学习，十分关心考试分数。这类被试必须接受为他制定的有针对性的特别指导计划。</div>"
                    }
                    if (people>8){
                        htmlStr+="<div><h3 align='center'>对人焦虑</h3>&nbsp;&nbsp;&nbsp;&nbsp;你过分注重自己的形象，害怕与人交往，退缩。这类被试必须接受为他制定的有针对性的特别指导计划。</div>"
                    }
                    if (loneliness>8){
                        htmlStr+="<div><h3 align='center'>孤独倾向</h3>&nbsp;&nbsp;&nbsp;&nbsp;你孤独、抑郁不善与人交往，自我封闭。这类被试必须接受为他制定的有针对性的特别指导计划。</div>"
                    }
                    if (remorse>8){
                        htmlStr+="<div><h3 align='center'>自责倾向</h3>&nbsp;&nbsp;&nbsp;&nbsp;你自卑、常怀疑自己的能力、常将失败、过失归咎于自己。这类被试必须接受为他制定的有针对性的特别指导计划。 </div>"
                    }
                    if (allergies>8){
                        htmlStr+="<div><h3 align='center'>过敏倾向</h3>&nbsp;&nbsp;&nbsp;&nbsp;你过于敏感，容易为一些小事而烦恼。这类被试必须接受为他制定的有针对性的特别指导计划。</div>"
                    }
                    if (terror>8){
                        htmlStr+="<div><h3 align='center'>恐怖倾向</h3>&nbsp;&nbsp;&nbsp;&nbsp;你对某些事物，如黑暗等，有较严重的恐惧感。这类被试必须接受为他制定的有针对性的特别指导计划。</div>"
                    }
                    if (impulsion>8){
                        htmlStr+="<div><h3 align='center'>冲动倾向</h3>&nbsp;&nbsp;&nbsp;&nbsp;你十分冲动，自制力差。这类被试必须接受为他制定的有针对性的特别指导划。 </div>"
                    }
                    if(total>65){
                        htmlStr+="<div><h3 align='center'>总结</h3>你的总成绩在65分以上，说明你存在一定的心理障碍这种人在日常生活中有不适应行为，有的可能表现为攻击和暴力行为等，因而需要制定特别的个人指导计划。</div>"

                    }else {
                        htmlStr+="<div><h3 align='center'>总结</h3>你的总成绩在65分以下，说明你非常正常，无需任何指导。</div>"

                    }

                    $("#explain").html(htmlStr);
                }
                layer.msg(data.msg);
            }
        });




    });

    $(function() {
        var canvas = document.querySelector('canvas'),
            ctx = canvas.getContext('2d')
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;
        ctx.lineWidth = .3;
        ctx.strokeStyle = (new Color(150)).style;

        var mousePosition = {
            x: 30 * canvas.width / 100,
            y: 30 * canvas.height / 100
        };

        var dots = {
            nb: 750,
            distance: 50,
            d_radius: 100,
            array: []
        };

        function colorValue(min) {
            return Math.floor(Math.random() * 255 + min);
        }

        function createColorStyle(r, g, b) {
            return 'rgba(' + r + ',' + g + ',' + b + ', 0.8)';
        }

        function mixComponents(comp1, weight1, comp2, weight2) {
            return (comp1 * weight1 + comp2 * weight2) / (weight1 + weight2);
        }

        function averageColorStyles(dot1, dot2) {
            var color1 = dot1.color,
                color2 = dot2.color;

            var r = mixComponents(color1.r, dot1.radius, color2.r, dot2.radius),
                g = mixComponents(color1.g, dot1.radius, color2.g, dot2.radius),
                b = mixComponents(color1.b, dot1.radius, color2.b, dot2.radius);
            return createColorStyle(Math.floor(r), Math.floor(g), Math.floor(b));
        }

        function Color(min) {
            min = min || 0;
            this.r = colorValue(min);
            this.g = colorValue(min);
            this.b = colorValue(min);
            this.style = createColorStyle(this.r, this.g, this.b);
        }

        function Dot() {
            this.x = Math.random() * canvas.width;
            this.y = Math.random() * canvas.height;

            this.vx = -.5 + Math.random();
            this.vy = -.5 + Math.random();

            this.radius = Math.random() * 2;

            this.color = new Color();

        }

        Dot.prototype = {
            draw: function() {
                ctx.beginPath();
                ctx.fillStyle = this.color.style;
                ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2, false);
                ctx.fill();
            }
        };

        function createDots() {
            for (i = 0; i < dots.nb; i++) {
                dots.array.push(new Dot());
            }
        }

        function moveDots() {
            for (i = 0; i < dots.nb; i++) {

                var dot = dots.array[i];

                if (dot.y < 0 || dot.y > canvas.height) {
                    dot.vx = dot.vx;
                    dot.vy = -dot.vy;
                } else if (dot.x < 0 || dot.x > canvas.width) {
                    dot.vx = -dot.vx;
                    dot.vy = dot.vy;
                }
                dot.x += dot.vx;
                dot.y += dot.vy;
            }
        }

        function connectDots() {
            for (i = 0; i < dots.nb; i++) {
                for (j = 0; j < dots.nb; j++) {
                    i_dot = dots.array[i];
                    j_dot = dots.array[j];

                    if ((i_dot.x - j_dot.x) < dots.distance && (i_dot.y - j_dot.y) < dots.distance && (i_dot.x -
                        j_dot.x) > -dots.distance && (i_dot.y - j_dot.y) > -dots.distance) {
                        if ((i_dot.x - mousePosition.x) < dots.d_radius && (i_dot.y - mousePosition.y) < dots
                            .d_radius && (i_dot.x - mousePosition.x) > -dots.d_radius && (i_dot.y - mousePosition
                            .y) > -dots.d_radius) {
                            ctx.beginPath();
                            ctx.strokeStyle = averageColorStyles(i_dot, j_dot);
                            ctx.moveTo(i_dot.x, i_dot.y);
                            ctx.lineTo(j_dot.x, j_dot.y);
                            ctx.stroke();
                            ctx.closePath();
                        }
                    }
                }
            }
        }

        function drawDots() {
            for (i = 0; i < dots.nb; i++) {
                var dot = dots.array[i];
                dot.draw();
            }
        }

        function animateDots() {
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            moveDots();
            connectDots();
            drawDots();

            requestAnimationFrame(animateDots);
        }

        $('canvas').on('mousemove', function(e) {
            mousePosition.x = e.pageX;
            mousePosition.y = e.pageY;
        });

        $('canvas').on('mouseleave', function(e) {
            mousePosition.x = canvas.width / 2;
            mousePosition.y = canvas.height / 2;
        });

        createDots();
        requestAnimationFrame(animateDots);
    });
</script>


</body>
</html>
