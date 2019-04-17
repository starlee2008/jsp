<%@ page import="cap.bean.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/11
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Student> studentList= (List<Student>) session.getAttribute("stus");
%>
<table>
    <%
        for(Student student:studentList){
    %>
    <tr>
        <td><%=student.getId()%></td>
        <td><%=student.getName()%></td>
        <td><%=student.getPhone()%></td>
        <td><a href="stu?p=del&id=<%=student.getId()%>">delete</a></td>
        <td><a href="stu?p=edit&id=<%=student.getId()%>">edit</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
