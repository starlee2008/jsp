<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/15
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul>
    <li>（1）<c:out value="普通一行字符串" /></li>
    <li>（2）<c:out value="&lt未使用字符转义&gt" /></li>
    <li>（2）<c:out value="&lt未使用字符转义&gt" escapeXml="false"/></li>
    <li>（4）<c:out value="${null}" default="使用了默认值"/></li>
    <li>（5）<c:out value="${null}"/></li>

</ul>
</body>
</html>
