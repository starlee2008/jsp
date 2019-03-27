<%@ page import="cap.db.C3P0Pool" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/27
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    C3P0Pool c3P0Pool=new C3P0Pool();
    String sql="select * from admin";
    ResultSet resultSet=c3P0Pool.doQuery(sql,new Object[]{});
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
        c3P0Pool.close();
    %>
</table>
</body>
</html>
