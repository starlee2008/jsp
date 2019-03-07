<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/7
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //step1
    request.setCharacterEncoding("utf-8");
    String str1=request.getParameter("str1");
    String str2=request.getParameter("str2");
%>
<%=str1%>
<%=str2%>
</body>
</html>
