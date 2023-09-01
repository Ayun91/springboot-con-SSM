<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/9/20
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .center {
            text-align: center;
        }

        .div1 {
            margin-top: 260px;
        }

        .hello {
            margin: 20px;
        }
    </style>
</head>
<body>
<div class="hello"><span>${tester.name}</span> 你好</div>
<div style="background-color: #FD482C;height: 20px"></div>
<div class="div1 center">
    <h1 class="center">答题结束，经系统评估，本次测试无效，请重新测试</h1>
</div>
</body>
</html>
