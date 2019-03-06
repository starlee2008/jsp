<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/6
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--Admin admin=new Admin(); -->
<jsp:useBean id="admin" class="cap.bean.Admin" scope="page"/>
<!-- admin.setUsername("xxx"),admin.setPassword("xxx")  xxx表示从表单里面提交的数据，前提是表单里面的名称和类中的属性名必须一致-->
<jsp:setProperty name="admin" property="*"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--admin.getUsername()，并将其值显示到页面上 -->
<jsp:getProperty name="admin" property="username"/>
<jsp:getProperty name="admin" property="password"/>
</body>
</html>
