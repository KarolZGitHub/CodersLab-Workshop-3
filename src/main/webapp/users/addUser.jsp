<%--
  Created by IntelliJ IDEA.
  User: karol
  Date: 21.03.2023
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddUser</title>
</head>
<body>
<%@include file="../headerForAddEdit.jsp" %>
<h3 style="color: #2e59d9"> Dodaj użytkownika</h3>
<form method="post" action="/user/add">
    <label for="name">Nazwa</label>
    <input type="text" id="name" name="name" required>
    <br>
    <label for="email">E-mail</label>
    <input type="email" id="email" name="email" required>
    <br>
    <label for="password">Hasło</label>
    <input type="password" id="password" name="password" required>
    <br>
    <input type="submit" value="Zapisz">
</form>
<%@include file="../footer.jsp" %>
</body>
</html>
