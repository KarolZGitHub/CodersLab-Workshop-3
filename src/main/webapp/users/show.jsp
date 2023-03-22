<%--
  Created by IntelliJ IDEA.
  User: karol
  Date: 20.03.2023
  Time: 00:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Show</title>
</head>
<body>
<%@include file="../header.jsp" %>
<h3 style="color: #2e59d9"> Sczegóły użytkownika</h3>
<table border="1">
    <tr>
        <td>Id</td>
        <td>${user.getId()}</td>
    </tr>
    <tr>
        <td>Nazwa użytkownika</td>
        <td>${user.getName()}</td>
    </tr>
    <tr>
        <td>Email</td>
        <td>${user.getEmail()}</td>
    </tr>
</table>
<%@include file="../footer.jsp" %>
</body>
</html>

