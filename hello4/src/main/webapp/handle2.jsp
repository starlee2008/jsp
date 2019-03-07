<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/7
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String opt=request.getParameter("opt");
    if(opt.equals("sina")){
        response.sendRedirect("http://www.sina.com.cn");
    }else if(opt.equals("sohu")){
        response.sendRedirect("http://www.sohu.com");
    }else{
        response.sendRedirect("http://www.163.com");
    }
%>
</body>
</html>
