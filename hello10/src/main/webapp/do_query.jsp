<%@ page import="cap.dao.AdminDAO" %>
<%@ page import="cap.dao.impl.AdminDAOImpl" %>
<%@ page import="cap.bean.Admin" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/3
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    AdminDAO adminDAO=new AdminDAOImpl();
    List<Admin> adminList=adminDAO.findAll();
%>
<table>
    <%
        for(Admin admin:adminList){
    %>
    <tr>
        <td><%=admin.getId()%></td>
        <td><%=admin.getUsername()%></td>
        <td><%=admin.getPassword()%></td>
        <td><a href="do_delete.jsp?id=<%=admin.getId()%>">delete</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
