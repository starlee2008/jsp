<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/7
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <td>服务器名</td>
        <td><%=request.getServerName()%></td>
        <td><%=request.getServerName()%></td>
    </tr>
    <tr>
        <td>协议</td>
        <td><%=request.getProtocol()%></td>
        <td><%=request.getServerName()%></td>
    </tr>
</table>
</body>
</html>
