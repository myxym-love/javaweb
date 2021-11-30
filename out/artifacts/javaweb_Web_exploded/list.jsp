<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/11/18
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户信息管理</title>
</head>
<style>
    table {
        border: 1px;
    }
</style>
<body>
<table>
    <tr>
        <td>id</td>
        <td>phone</td>
        <td>pwd</td>
        <td>sex</td>
        <td>img</td>
        <td>create_time</td>
        <td>role</td>
        <td>username</td>
        <td>wechat</td>
    </tr>
<%--    <jsp:useBean id="user" scope="request" type="java.util.List"/>--%>
    <c:forEach items = "${requestScope.user}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.phone}</td>
            <td>${user.pwd}</td>
            <td>${user.sex}</td>
            <td>${user.img}</td>
            <td>${user.createTime}</td>
            <td>${user.role}</td>
            <td>${user.username}</td>
            <td>${user.wechat}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
