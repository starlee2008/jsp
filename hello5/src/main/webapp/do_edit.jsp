<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/14
  Time: 16:20
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
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/cap";
    String user="root";
    String pass="admin";
    Class.forName(driver);
    Connection connection=DriverManager.getConnection(url,user,pass);
    Statement statement=connection.createStatement();
    String sql="select * from admin where id="+id;
    ResultSet resultSet=statement.executeQuery(sql);
    if(resultSet.next()){
%>
<form action="do_update.jsp" method="post">
    <input type="hidden" name="id" value="<%=resultSet.getInt("id")%>">
    <input type="text" name="username" value="<%=resultSet.getString("username")%>">
    <input type="text" name="password" value="<%=resultSet.getString("password")%>">
    <input type="submit" value="update">
</form>
<%
    }
%>
</body>
</html>
