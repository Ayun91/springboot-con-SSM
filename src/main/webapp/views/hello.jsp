<%--
  Created by IntelliJ IDEA.
  User: 18318
  Date: 2022/7/22
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href='${pageContext.request.contextPath}/static/hello/css/style.css' type="text/css"/>
</head>
<body id="PageTop">
<div class="wrap">
    <div class="Container">
        <div class="Container__inner">
            <article id="JsFirstBlock" class="FirstBlock">
                <div class="FirstBlock__inner">
                    <ul class="FirstBlock__items">
                        <li class="FirstBlock__item">
                            <div class="FirstBlock__item-inner">
                                <p style="font-size: 50px;color: #000000;">欢迎来到AAA</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </article>
        </div>
    </div>
</div>
<canvas id="jsCanvas" class="canvas" width="1200" height="500"></canvas>
<script src="${pageContext.request.contextPath}/static/hello/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/hello/js/velocity.min.js"></script>
<script src="${pageContext.request.contextPath}/static/hello/js/velocity.ui.min.js"></script>
<script src="${pageContext.request.contextPath}/static/hello/js/easeljs-0.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/hello/js/tweenjs-0.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/static/hello/js/jazy19.min.js"></script>
</body>
</html>
