<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/8
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${map}" var="me">
    <c:url value="/kick" var="url">
        <c:param name="username" value="${me.key}"/>
    </c:url>
    ${me.key}<a href="${url}">kick</a><br>

</c:forEach>
</body>
</html>
