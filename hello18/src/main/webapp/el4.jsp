<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/15
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
\${2>1?"Yes":"No"}:结果${2>1?"Yes":"No"}<br>
\${2<1?"Yes":"No"}:结果${2<1?"Yes":"No"}<br>
\${empty param.username}:结果${empty param.username}<br>
\${empty param.password}:结果${empty param.password}<br>
${param.username}
</body>
</html>
