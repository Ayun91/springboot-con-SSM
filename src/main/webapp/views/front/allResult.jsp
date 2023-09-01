<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/9/20
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>答题结束</title>
    <style>
        .center{
            text-align: center;
        }
        .div1{
            margin-top: 260px;
        }
        .hello{
            margin: 20px;
        }
    </style>
</head>
<body>
<div class="hello"><span>${tester.name}</span> 你好</div>
<div style="background-color: #5FB878;height: 20px"></div>
<div class="div1 center">
    <h1 class="center">答题结束，系统已为你交卷，作答结果已上传！</h1>
    <h1 class="center">感谢你的配合</h1>
</div>
</body>