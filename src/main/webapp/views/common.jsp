<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="${pageContext.request.contextPath}/static/echarts/echarts.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/static/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/static/layui/layui.js"></script>
<%-- 优化checkbox复选框   --%>
<style>
    .layui-table-cell .layui-form-checkbox[lay-skin="primary"] {
        top: 50%;
        transform: translateY(-50%);
    }
</style>


