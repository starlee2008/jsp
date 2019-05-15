<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/15
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="admin" class="cap.bean.Admin" scope="page"/>
<c:set target="${admin}" property="username" value="starlee2008"></c:set>
<c:set var="username" value="starlee2008" scope="page"/>
${username}
<br>
${admin.username}

</body>
</html>
