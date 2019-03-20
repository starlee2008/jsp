<%@ page import="cap.db.DBCon" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="cap.db.DBConnection" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/20
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String uername=request.getParameter("username");
    String password=request.getParameter("password");
    DBConnection dbConnection=new DBConnection();
    String sql="select * from admin where username=? and password=?";
    //String sql="select * from admin where username='"+uername+"' and password='"+password+"'";
    System.out.println("++++++++++++++"+sql+"++++++++++++++++++++++");
    ResultSet resultSet=dbConnection.doQuery(sql,new Object[]{uername,password});

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
        dbConnection.close();
    %>
</table>
</body>
</html>
