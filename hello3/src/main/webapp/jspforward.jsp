<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/6
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp forward行为元素的使用</title>
</head>
<body>
<%
    System.out.println("hello world1");
%>
<jsp:forward page="news.jsp"/>
<%
    System.out.println("hello world2");
%>
</body>
</html>
