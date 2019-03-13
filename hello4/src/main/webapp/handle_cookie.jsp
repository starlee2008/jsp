<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/13
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    Cookie cookie=new Cookie("user",username);
    cookie.setMaxAge(10);
    response.addCookie(cookie);
    response.sendRedirect("read_cookie.jsp");
%>
</body>
</html>
