<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/15
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="name" scope="session" value="starlee2008"/>
<c:set var="age" scope="session">22</c:set>
<c:set var="sex" scope="session">男</c:set>

<ul>
    <li><c:out value="${name}"></c:out>
    <li><c:out value="${age}"></c:out>
    <li><c:out value="${sex}"></c:out>
</ul>
<c:remove var="age"/>

<ol>
    <li><c:out value="${name}"></c:out>
    <li><c:out value="${age}"></c:out>
    <li><c:out value="${sex}"></c:out>
</ol>

</body>
</html>
