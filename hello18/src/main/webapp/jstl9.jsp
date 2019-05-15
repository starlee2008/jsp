<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/15
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:redirect url="http://localhost:8080/hello18/el3.jsp">
    <c:param name="username" value="star"/>
</c:redirect>
</body>
</html>
