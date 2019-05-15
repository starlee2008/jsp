<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/15
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="score" value="85"></c:set>
<c:choose>
    <c:when test="${score>=90}">
        great
    </c:when>
    <c:when test="${score>=70 and score<90}">
        good
    </c:when>
    <c:when test="${score>=60 and score<70}">
        pass
    </c:when>
    <c:otherwise>
        fail
    </c:otherwise>
</c:choose>
</body>
</html>
