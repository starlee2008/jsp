<%@ page import="java.sql.*" %>
<%@ page import="cap.db.DBCon" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/20
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    /*
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/cap";
    String user="root";
    String pass="admin";
    Class.forName(driver);
    Connection connection=DriverManager.getConnection(url,user,pass);
    Statement statement=connection.createStatement();
    String sql="select * from admin order by id";
    ResultSet resultSet=statement.executeQuery(sql);
    */
    DBCon dbCon=new DBCon();
    String sql="select * from admin order by id";
    ResultSet resultSet=dbCon.doQuery(sql);
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
        /*
        resultSet.close();
        statement.close();
        connection.close();
        */
        dbCon.close();
    %>
</table>
<a href="addAdmin.jsp">Add</a>
</body>
</html>
