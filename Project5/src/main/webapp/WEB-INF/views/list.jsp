<%--
  Created by IntelliJ IDEA.
  User: 임승범
  Date: 2023-12-01
  Time: 오후 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<head>
    <link rel="stylesheet" type="text/css" href="${path}/css/style.css">
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하시겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
    <h1>자유게시판</h1>
    <table id="list" width="90%">
        <tr>
            <th>Id</th>
            <th>Category</th>
            <th>Title</th>
            <th>Writer</th>
            <th>Content</th>
            <th>Regdate</th>
            <th>View</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.seq}</td>
                <td>${u.category}</td>
                <td>${u.title}</td>
                <td>${u.writer}</td>
                <td>${u.content}</td>
                <td>${u.regdate}</td>
                <td><a href="view/${u.seq}">View</a></td>
                <td><a href="editform/${u.seq}">Edit</a></td>
                <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/><a href="add">Add New Post</a>
</body>
