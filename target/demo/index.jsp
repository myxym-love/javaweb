<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<body>

<form action="${pageContext.request.contextPath}/user/login" method="post">
    用户名:<label>
    <input type="text" name="username">
</label><br>
    密码:<label>
    <input type="password" name="pwd">
</label><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
