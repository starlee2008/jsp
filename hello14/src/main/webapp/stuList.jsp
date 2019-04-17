<%@ page import="cap.bean.Student" %>
<%@ page import="cap.util.PageBean" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/17
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    PageBean pageBean = (PageBean) session.getAttribute("pageBean");
    List<Student> studentList=pageBean.getList();
%>
<table>
    <%
        for(Student student:studentList){
    %>
    <tr>
        <td><%=student.getId()%></td>
        <td><%=student.getName()%></td>
        <td><%=student.getPhone()%></td>
        <td><%=student.getAddress()%></td>
    </tr>
    <%
        }
    %>
    <tr>
        <td>
            共<%=pageBean.getTotalPages()%>页,
            当前<%=pageBean.getPageNo()%>页
            <a href="stu?action=list&pageNo=<%=pageBean.getTopPageNo()%>">首页</a>
            <a href="stu?action=list&pageNo=<%=pageBean.getPreviousPageNo()%>">上一页</a>
            <a href="stu?action=list&pageNo=<%=pageBean.getNextPageNo()%>">下一页</a>
            <a href="stu?action=list&pageNo=<%=pageBean.getBottomPageNo()%>">尾页</a>
        </td>
    </tr>
</table>
</body>
</html>
