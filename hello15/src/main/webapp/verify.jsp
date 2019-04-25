<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/25
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String scode = (String) session.getAttribute("scode");
    String ucode = request.getParameter("ucode");
    if (scode.equals(ucode))
        out.print("验证码输入正确");
    else
        out.print("请重新输入，验证码有误");

%>
</body>
</html>
