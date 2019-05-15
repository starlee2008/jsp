<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cap.bean.Admin" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/15
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Admin admin= (Admin) session.getAttribute("admin");
%>
JSP语法访问：<%=admin.getUsername()%>
<br>

EL表达式访问：${admin.username}
<br>
EL访问数组方式1：
<c:forEach items="${week}" varStatus="status">
    ${week[status.index]}
</c:forEach>
<br>
EL访问数组方式2：
<c:forEach items="${week}" var="str">
    ${str}
</c:forEach>
<br>
EL访问List集合数据1：
<c:forEach items="${list}" varStatus="status">
    ${list[status.index]}
</c:forEach>
<br>
EL访问List集合数据2：
<c:forEach items="${list}" varStatus="status" var="item">
    ${item}
</c:forEach>
<br>

EL访问Map集合数据1：
<c:forEach items="${map}" varStatus="status">
    ${map[status.index]}
</c:forEach>
<br>
EL访问Map集合数据2：
<c:forEach items="${map}" varStatus="status" var="item">
    ${item}
</c:forEach>

</body>
</html>