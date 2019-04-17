<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/11
  Time: 16:16
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
    }
    session.removeAttribute("errMsg");
%>
</body>
</html>
