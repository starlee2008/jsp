<%@ page import="cap.db.DBCon" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/27
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DBCon dbCon=new DBCon();
    String procedure="{call deletebyid(?)}";
    int result=dbCon.doUpdate(procedure,new Object[]{id});
    if(result>0)
        response.sendRedirect("call_query.jsp");
    else
        out.print("delete error");
%>
</body>
</html>
