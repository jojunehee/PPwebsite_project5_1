<%--
  Created by IntelliJ IDEA.
  User: 임승범
  Date: 2023-12-02
  Time: 오전 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>View</title>
    <link rel="stylesheet" type="text/css" href="${path}/css/style.css">
</head>
<body>
<h1>게시글 상세보기</h1>
    <table>
        <tr><td>제목</td><td>${u.title}</td></tr>
        <tr><td>작성자</td><td>${u.writer}</td></tr>
        <tr><td>카테고리</td><td>${u.category}</td></tr>
        <tr><td>내용</td><td>${u.content}</td></tr>
        <tr><td>등록일</td><td>${u.regdate}</td></tr>
    </table>
    <input type="button" value="뒤로가기" onclick="history.back()"/>
</body>
</html>
