<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AAA测试</title>

    <STYLE>
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            background-color: wheat;
        }

        input {
            border: none;
            border-bottom: 1px solid #D0D0D0;
            padding: 10px 0px 5px 15px;
            margin-left: 15px;
            font-size: 20px;
            color: #000;
        }

        .outer_box {
            position: relative;
            height: calc(100vh);
        }

        /* 背景颜色 */
        .back_one {
            position: absolute;
            width: 50%;
            height: 100%;
            left: 0px;
            background-color: #7BB6B6;
        }

        .back_two {
            position: absolute;
            width: 50%;
            height: 100%;
            right: 0px;
            background-color: #E3D0AD;
        }

        /* 登录窗口 */
        .login_box {
            width: 400px;
            height: 400px;
            background-color: #fff;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            box-shadow: 10px 10px #80808079;
        }

        /* 标题 */
        .login_box .title {
            width: 100%;
            text-align: center;
            margin: 35px 0px 35px 0px;
            font-size: 30px;
            color: #52565B;
        }

        /* p标签的公共样式 */
        .login_box p {
            width: 100%;
            height: 40px;
            margin-top: 15px;
            text-align: center;
            justify-content: center;
        }

        .layui-btn {
            border-radius: 8px;
            width: 500%;
        }

        /* iconfont */
        .login_box p i {
            color: #52565B;
            font-size: 25px;
        }

        /* 登录按钮的样式 */
        .login_box .logIn_btn {
            width: 200px;
            height: 40px;
            line-height: 40px;
            margin-left: 100px;
            background-color: #EBF7F3;
            color: #7BB6B6;
            border-radius: 5px;
            box-shadow: 0px 0px 3px #e6e5e5;
            font-weight: bold;
            display: flex;
        }

        .login_box .logIn_btn span {
            display: block;
            width: 10%;
            /* height: 100%; */
        }

        .login_box .logIn_btn .left_line {
            height: 20px;
            margin-top: 20px;
            border-left: 2px solid #7BB6B6;
        }

        .login_box .logIn_btn .right_line {
            height: 20px;
            border-right: 2px solid #7BB6B6;
        }
    </STYLE>
</head>
<body>
<div class="outer_box">
    <div class="back_one"></div>
    <div class="back_two"></div>
    <form class="layui-form">
        <div class="login_box">
            <h3 class="title">AAA测试</h3>
            <div class="layui-form-item my-form-item">
                <p><i class="iconfont">姓&nbsp;&nbsp;&nbsp;&nbsp;名</i><input name="name" lay-verify="required|myName"
                                                                            autocomplete="off" type="text"
                                                                            placeholder="请输入你的姓名"></p>
            </div>
            <div class="layui-form-item my-form-item">
                <p><i class="iconfont">手机号</i><input type="text" name="phone" lay-verify="required|phone|number"
                                                     autocomplete="off" placeholder="请输入手机号"></p>
            </div>
            <div class="layui-form-item my-form-item">
                <p><i class="iconfont">邀请码</i><input type="text" name="testCode" autocomplete="off"
                                                     placeholder="请输入邀请码"></p>
            </div>
            <div class="layui-form-item my-form-item">
                <p class="logIn_btn">
                    <button class="iconfont layui-btn" lay-submit lay-filter="testFormFilter">开始测试</button>
                </p>
            </div>
        </div>
    </form>
</div>
<script>
    layui.use(['form', 'layer', 'jquery'], function () {
        var form = layui.form;
        var layer = layui.layer;
        var $ = layui.jquery;
        //校验姓名
        form.verify({
            myName: function (value, item) { //value：表单的值、item：表单的DOM对象
                if (!new RegExp("^[\u4E00-\u9FA5]{2,4}$").test(value)) {
                    return '姓名只能是2到4位的汉字';
                }

            }
        });

        form.on('submit(testFormFilter)', function (data) {
            //发送ajax到后端
            $.ajax({
                url: "${pageContext.request.contextPath}/front/checkTest.do",
                type: "POST",
                dataType: "JSON",
                contentType: "application/json;charset=UTF-8",
                data: JSON.stringify(data.field),
                success: function (ret) {
                    if (ret.code == 0) {

                        //获取测试者信息保存到本地存储中
                        //localStorage.setItem("tester",JSON.stringify(ret.data))
                        window.location.href = "${pageContext.request.contextPath}/front/toShowQuestion.do";
                    } else {
                        layer.msg(ret.msg)
                    }

                }
            })
            return false; //阻止表单跳转。
        });
    });
</script>
</body>
</html>