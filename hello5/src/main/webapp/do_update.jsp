<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/14
  Time: 16:27
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
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/cap";
    String user="root";
    String pass="admin";
    Class.forName(driver);
    Connection connection=DriverManager.getConnection(url,user,pass);
    Statement statement=connection.createStatement();
    String sql="update admin set username='"+username+"',password='"+password+"' where id="+id;
    int result=statement.executeUpdate(sql);
    if(result>0)
        response.sendRedirect("do_query.jsp");
    else
        out.print("更新失败");
%>
</body>
</html>
