<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/13
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String errMsg= (String) session.getAttribute("errMsg");
    if(errMsg!=null){
%>
<%=errMsg%>
<%
        session.removeAttribute("errMsg");
    }
%>
<form action="do_login.jsp" method="post">
    <input type="text" name="username">
    <input type="password" name="password">
    <input type="submit" value="login">
</form>
</body>
</html>
