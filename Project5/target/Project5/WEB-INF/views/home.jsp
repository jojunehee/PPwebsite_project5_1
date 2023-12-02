<%--
  Created by IntelliJ IDEA.
  User: 임승범
  Date: 2023-12-02
  Time: 오전 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="${path}/css/style.css">
</head>
<body>
    <h1>
        Hello World!
    </h1>
    <p> The time on the server is ${serverTime}.</p>
    <p> <a href="board/list">게시판으로 이동</a> </p>
</body>
</html>