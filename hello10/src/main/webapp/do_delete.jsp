<%@ page import="cap.dao.AdminDAO" %>
<%@ page import="cap.dao.impl.AdminDAOImpl" %><%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/3
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
    int id=Integer.parseInt(request.getParameter("id"));
    AdminDAO adminDAO=new AdminDAOImpl();
    int result=((AdminDAOImpl) adminDAO).delete(id);
    if(result>0)
        response.sendRedirect("do_query.jsp");
    else
        out.print("delete error");
%>
</body>
</html>
