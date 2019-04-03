<%@ page import="cap.dao.AdminDAO" %>
<%@ page import="cap.dao.impl.AdminDAOImpl" %>
<%@ page import="cap.bean.Admin" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/3
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    Admin admin=new Admin(username,password);
    AdminDAO adminDAO=new AdminDAOImpl();
    int result=adminDAO.login(admin);
    if(result==1)
        response.sendRedirect("index.jsp");
    else{
        session.setAttribute("errMsg","请重新输入用户名密码登录");
        response.sendRedirect("login1.jsp");
    }
%>
</body>
</html>
