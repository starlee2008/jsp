<%@ page import="cap.db.DBCon" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/27
  Time: 9:17
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
    int id=Integer.parseInt(request.getParameter("id"));
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    DBCon dbCon=new DBCon();
    String procedure="{call updatebyid(?,?,?)}";
    int result=dbCon.doUpdate(procedure,new Object[]{username,password,id});
    if(result>0)
        response.sendRedirect("call_query.jsp");
    else
        out.print("update error");
%>
</body>
</html>
