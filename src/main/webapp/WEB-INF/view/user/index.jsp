<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>展示</title>
    <script src="/js/jquery-1.11.0.min.js" ></script>
</head>
<script>
    function deleteUser(id){
        $.ajax({
            method: 'delete',
            url:'users/'+id,
            dataType:'text',
            success:function(data){
                if(data=="success"){
                    alert("删除成功");
                    location.reload();
                }
            }
        });
    }

</script>

<body>
    <a href="/users/add">添加用户</a>
    <table border="1">
        <thead>
            <th>用户名</th>
            <th>年龄</th>
            <th>操作</th>
        </thead>
        <tbody>
            <c:forEach items="${userList}" var="u" varStatus="status">
                <tr>
                    <td>${u.name}</td>
                    <td>${u.age}</td>
                    <td>
                        <a href="/users/${status.index}">查看当前用户</a>||
                        <a href="/users/${status.index}/edit">编辑当前用户</a>||
                        <a href="javascript:void(0)" onclick="deleteUser(${status.index})">删除当前用户</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
