<%--
  Created by IntelliJ IDEA.
  User: 임승범
  Date: 2023-12-02
  Time: 오전 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="${path}/css/style.css">
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table id="edit">
        <tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
        <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
        <tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>