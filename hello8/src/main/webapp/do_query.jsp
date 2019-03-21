<%@ page import="cap.db.DBCon" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/21
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    DBCon dbCon=new DBCon();
    String sql="select * from admin";
    ResultSet resultSet=dbCon.doQuery(sql,new Object[]{});
%>
<table>
    <%
        while(resultSet.next()){
    %>
    <tr>
        <td><%=resultSet.getInt("id")%></td>
        <td><%=resultSet.getString("username")%></td>
        <td><%=resultSet.getString("password")%></td>
    </tr>
    <%
        }
        dbCon.close();
    %>
</table>
<a href="addAdmin.jsp">Add</a>
</body>
</html>
