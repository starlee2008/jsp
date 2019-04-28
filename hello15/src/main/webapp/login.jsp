<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/28
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String errMsg= (String) request.getAttribute("errMsg");
    if(errMsg!=null){
%>
<%=errMsg%>
<%
    }
    request.removeAttribute("errMsg");
%>
<form action="login" method="post">
    <input type="text" name="username"><br>
    <input type="text" name="password"><br>
    <input type="submit" value="login">
</form>
</body>
</html>
