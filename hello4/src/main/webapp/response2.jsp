<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/7
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setHeader("refresh","1");
%>
<%
    Date date=new Date();
%>
<%=date.toString()%>
<br>
<%=(new Date()).toString()%>
</body>
</html>
