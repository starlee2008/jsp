<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/14
  Time: 16:16
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
    String sql="delete from admin where id="+id;
    int result=statement.executeUpdate(sql);
    if(result>0)
        response.sendRedirect("do_query.jsp");
    else
        out.print("删除失败");
%>
</body>
</html>
