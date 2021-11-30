<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/11/30
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
    <form action="/register" method="post">
        手机号:<input type="text" name="phone"><br>
        密码:<input type="password" name="pwd"><br>
        性别:<input type="text" name="sex"><br>
        用户名:<input type="text" name="username"><br>
        微信:<input type="text" name="wechat"><br>
        <input type="submit" value="提交">
    </form>
</body>
</html>
