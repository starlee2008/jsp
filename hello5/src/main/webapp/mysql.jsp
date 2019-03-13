<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/13
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/cap";
    String username="root";
    String passwrod="admin";
    //第一步加载驱动
    Class.forName(driver);
    Connection connection=DriverManager.getConnection(url,username,passwrod);
    /*
    if(connection!=null)
        out.print("连接MySQL数据库成功");
    else
        out.print("连接MySQL数据库失败");
     */
    String sql="select * from admin";
    Statement statement=connection.createStatement();
    ResultSet resultSet=statement.executeQuery(sql);

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
        resultSet.close();
        statement.close();
        connection.close();
    %>
</table>
</body>
</html>
