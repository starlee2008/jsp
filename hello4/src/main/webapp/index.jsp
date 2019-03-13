<%@page contentType="text/html; charset=utf-8" language="java" %>
<html>
<body>
<%
    String user = (String) session.getAttribute("user");
    if (user != null) {

%>
<h2>Hello World!</h2>
<%
} else {
%>
对不起，你没有权限访问，请登陆<a href="login.jsp">登录</a>
<%
    }
%>
</body>
</html>
