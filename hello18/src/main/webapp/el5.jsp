<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/15
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:useBean id="admin" scope="page" class="cap.bean.Admin" ></jsp:useBean>
<jsp:setProperty property="username" name="admin" value="starlee2008" />
<jsp:setProperty property="password" name="admin" value="starlee2008" />



${pageScope.admin.username}

<br>
<%
    request.setAttribute("userName", "starlee2008");
%>
${requestScope.userName }
<br>
<%
    session.setAttribute("userName","starlee2008");
%>
${sessionScope.userName }

<br>
<%
    Cookie cookie = new Cookie("user", "xiaowu");
    response.addCookie(cookie);
%>

${cookie.user.value}

</body>
</html>
