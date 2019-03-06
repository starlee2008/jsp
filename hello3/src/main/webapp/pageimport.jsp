<%@ page import="cap.bean.Admin" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/6
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Admin admin=new Admin("starlee","starlee");
    Date date=new Date();
%>
<%=admin.getUsername()%>
<%=admin.getPassword()%><br>
<%=admin.toString()%><br>
<%=date.toString()%>
</body>
</html>
