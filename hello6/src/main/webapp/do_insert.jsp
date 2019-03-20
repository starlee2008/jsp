<%@ page import="java.sql.*" %>
<%@ page import="cap.db.DBCon" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/14
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    /*
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/cap";
    String user="root";
    String pass="admin";
    Class.forName(driver);
    Connection connection=DriverManager.getConnection(url,user,pass);
    Statement statement=connection.createStatement();
    String sql="insert into admin(username,password) values('"+username+"','"+password+"')";
    int result=statement.executeUpdate(sql);
    */
    DBCon dbCon=new DBCon();
    String sql="insert into admin(username,password) values('"+username+"','"+password+"')";
    int result=dbCon.doUpdate(sql);
    if(result>0)
        response.sendRedirect("do_query.jsp");
    else
        out.print("添加失败");
%>
</body>
</html>
