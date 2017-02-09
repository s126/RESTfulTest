<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/9
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
</head>
<body>
    <form:form action="/users" modelAttribute="user" method="post" >
        <p><form:input path="name" placeholder="请输入用户名" /></p>
        <p><form:input type="number" path="age" /></p>
        <input type="submit" value="添加">
    </form:form>
</body>
</html>
