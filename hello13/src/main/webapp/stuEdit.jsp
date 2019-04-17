<%@ page import="cap.bean.Student" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/11
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Student student= (Student) session.getAttribute("stu");
%>
<form action="stu?p=update" method="post">
    <input type="hidden" name="id" value="<%=student.getId()%>">
    <input type="text" name="name" value="<%=student.getName()%>">
    <input type="text" name="phone" value="<%=student.getPhone()%>">
    <input type="submit" value="update">
</form>
</body>
</html>
