<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./views/common.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台登录页面</title>

    <style type="text/css">
        .container{
            width: 420px;
            height: 320px;
            min-height: 320px;
            max-height: 320px;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            margin: auto;
            padding: 20px;
            z-index: 130;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 3px 18px rgba(100, 0, 0, .5);
            font-size: 16px;
        }
        .close{
            background-color: white;
            border: none;
            font-size: 18px;
            margin-left: 410px;
            margin-top: -10px;
        }

        .layui-input{
            border-radius: 5px;
            width: 300px;
            height: 40px;
            font-size: 15px;
        }
        .layui-form-item{
            margin-left: -20px;
        }
        #logoid{
            margin-top: -16px;
            padding-left:150px;
            padding-bottom: 15px;
        }
        .layui-btn{
            margin-left: -50px;
            border-radius: 5px;
            width: 350px;
            height: 40px;
            font-size: 15px;
        }
        .verity{
            width: 120px;
        }
        .font-set{
            font-size: 13px;
            text-decoration: none;
            margin-left: 120px;
        }
        a:hover{
            text-decoration: underline;
        }
        h2{
            padding-bottom: 50px;
            text-align: center;
        }

    </style>
</head>
<body>
<form class="layui-form" > <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
    <div class="container">
        <button class="close" title="关闭"></button>

        <h2>AAA后台管理系统</h2>
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" name="username"  value=""  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-block">
                <input type="password" name="password" value="" lay-verify="required"   placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="testFormFilter">登录</button>
            </div>
        </div>
    </div>
</form>
</body>
<script>
    //防止在iframe里嵌套显示登录界面
    if(window !=top){
        top.location.href=location.href;
    }
    layui.use(['form','layer','jquery'], function(){
        var form = layui.form;
        var layer = layui.layer;
        var $ = layui.jquery;
        //各种基于事件的操作，下面会有进一步介绍

        form.on('submit(testFormFilter)', function(data){
            console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
            //let load = layer.load(1);
            var loading = layer.msg('正在登录请稍后。。。', {icon: 1, shade: 0.3, time:0});
            //提交表单数据
            $.ajax({
                url:"${pageContext.request.contextPath}/login.do",
                type: "POST",
                dataType:"JSON",
                //  data:data.field,//传表单数据
                data:JSON.stringify(data.field),//将js对象转换成json字符串
                contentType: 'application/json;charset=UTF-8',
                success:function (ret) {
                    //关闭遮罩层
                    layer.close(loading);
                    if(ret.code==0){
                        //登录成功之后，去主页
                        window.location.href="${pageContext.request.contextPath}/views/home.jsp";
                    }else
                    {
                        layer.msg(ret.msg,{icon: 5});
                    }

                }
            })

            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });
    });
</script>
</html>
