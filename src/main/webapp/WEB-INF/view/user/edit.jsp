<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/9
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form action="/users/${id}" modelAttribute="user" method="PUT" >
        <p><label>用户名：</label><form:input path="name" placeholder="请输入用户名" /></p>
        <p><label>年龄：</label><form:input type="number" path="age" /></p>
        <input type="submit" value="添加">
    </form:form>
</body>
</html>
