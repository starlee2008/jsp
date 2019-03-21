<%@ page import="cap.db.DBCon" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/21
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    DBCon dbCon=new DBCon();
    String sql="insert into admin(username,password) values(?,?)";
    int result=dbCon.doUpdate(sql,new Object[]{username,password});
    if(result>0)
        response.sendRedirect("do_query.jsp");
    else
        out.print("add error");
%>
</body>
</html>
