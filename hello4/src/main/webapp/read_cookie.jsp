<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/3/13
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username=null;
    Cookie[] cookies=request.getCookies();
    for(Cookie cookie:cookies){
        if(cookie.getName().equals("user")){
            username=cookie.getValue();
        }
    }
    if(username!=null)
        out.print(username+"有效期为10s");
    else
        out.print(username+"已经失效");
%>
</body>
</html>
