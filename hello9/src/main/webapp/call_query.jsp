<%@ page import="cap.db.DBCon" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/27
  Time: 8:59
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
    String procedure="{call queryall()}";
    ResultSet resultSet=dbCon.doQuery(procedure,new Object[]{});
%>
<table>
    <%
        while (resultSet.next()){
    %>
    <tr>
        <td><%=resultSet.getInt("id")%></td>
        <td><%=resultSet.getString("username")%></td>
        <td><%=resultSet.getString("password")%></td>
        <td><a href="call_delete.jsp?id=<%=resultSet.getInt("id")%>">delete</a></td>
        <td><a href="call_edit.jsp?id=<%=resultSet.getInt("id")%>">Edit</a></td>
    </tr>
    <%
        }
        dbCon.close();
    %>
</table>
</body>
</html>
