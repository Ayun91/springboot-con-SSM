<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/8/29
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>AAA测试后台管理</title>
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black"><i class="layui-icon layui-icon-face-surprised" style="font-size: 38px; color: #fff;">.。</i></div>
        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <!-- 移动端显示 -->
            <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
                <i class="layui-icon layui-icon-spread-left"></i>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a href="javascript:;">
                    <img src="${user.avatar}" class="layui-nav-img">
                    ${user.username}
                </a>
                <dl class="layui-nav-child">
                    <a href="${pageContext.request.contextPath}/logout.do">注销</a>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <c:forEach items="${menuList.firstMenu}" var="menu">
                <ul class="layui-nav layui-nav-tree" lay-filter="test">
                    <li class="layui-nav-item">
                        <a class="" href="javascript:;"><i class="layui-icon ${menu.icon}" style="font-size: 18px; color: #fff;"> </i>${menu.menuName}</a>
                        <dl class="layui-nav-child">
                            <c:forEach items="${menuList.secondMenu}" var="subMenu">
                                <c:if test="${subMenu.parentId eq menu.menuId}">
                                    <dd><a href="${pageContext.request.contextPath}${subMenu.url}">${subMenu.menuName}</a></dd>
                                </c:if>
                            </c:forEach>
                        </dl>
                    </li>
                </ul>
            </c:forEach>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <iframe id="main" width="100%" height="100%" src="hello.jsp"></iframe>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        底部固定区域
    </div>
</div>
<script>
    //JS
    layui.use(['element', 'layer', 'util','jquery'], function () {
        var element = layui.element
            , layer = layui.layer
            , util = layui.util
            , $ = layui.$;

        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            menuLeft: function (othis) {
                layer.msg('展开左侧菜单的操作', {icon: 0});
            }
            , menuRight: function () {
                layer.open({
                    type: 1
                    , area: ['260px', '100%']
                    , offset: 'rt' //右上角
                    , anim: 5
                    , shadeClose: true
                });
            }
        });
        $(document).ready(function(){
            $("dd>a").click(function (e) {
                e.preventDefault();//取消事件的默认动作。
                $("#main").attr("src",$(this).attr("href"));
            });
        });
    });
</script>
</body>
</html>
