<%@ page import="cap.bean.Admin" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/10
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Admin> adminList= (List<Admin>) session.getAttribute("admins");
%>
<table>
    <%
        for(Admin admin:adminList){
    %>
    <tr>
        <td><%=admin.getId()%></td>
        <td><%=admin.getUsername()%></td>
        <td><%=admin.getPassword()%></td>
        <td><a href="del?id=<%=admin.getId()%>">delete1</a></td>
        <td><a href="admin?action=del&id=<%=admin.getId()%>">delete2</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
