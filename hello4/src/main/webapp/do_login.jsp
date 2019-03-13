<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/13
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals("star") && password.equals("star")) {
        session.setAttribute("user",username);
        response.sendRedirect("index.jsp");
    } else {
        session.setAttribute("errMsg","用户名或者密码错误，请重新登录");
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>
