<%--
  Created by IntelliJ IDEA.
  User: karol
  Date: 22.03.2023
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<%@include file="/headerForAddEdit.jsp" %>
<h3 style="color: #2e59d9"> Edycja użytkownika</h3>
<form method="post" action="/user/edit">
    Nazwa<br>
    <input type="text" name="name" value="${user.getName()}">
    Email<br>
    <input type="email" name="email" value="${user.getEmail()}">
    Hasło<br>
    <input type="text" name="password" value="Hasło użytkownika"><br>
    <input type="submit" value="Edytuj">
    <%@include file="/footer.jsp" %>
</body>
</html>
