<%@ page import="cap.db.DBCon" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/27
  Time: 9:10
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
    String procedure="{call querybyid(?)}";
    ResultSet resultSet=dbCon.doQuery(procedure,new Object[]{id});
    if(resultSet.next()){
%>
<form action="call_update.jsp" method="post">
    <input type="hidden" name="id" value="<%=resultSet.getInt("id")%>">
    <input type="text" name="username" value="<%=resultSet.getString("username")%>">
    <input type="text" name="password" value="<%=resultSet.getString("password")%>">
    <input type="submit"  value="update">
</form>
<%
    }
    dbCon.close();
%>
</body>
</html>
