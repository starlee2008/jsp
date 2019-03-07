<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/7
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page buffer="16kb" %>
<html>
<head>
    <title>out内置对象的使用</title>
</head>
<body>

<%=out.getBufferSize()%><br>
<%
    out.print("输出字符数组<br>");
    out.print(new char[]{'c','h','a','r'});
    out.print("<br>");
    out.print("输出双精度数<br>");
    out.print(12.4);
    out.print("<br>");
    out.print("输出单精度数<br>");
    out.print(12.4f);
%>
</body>
</html>
