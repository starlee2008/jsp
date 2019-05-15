<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/15
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
\${true && true}:结果${true && true}<br>
\${true and true}:结果${true and true}<br>
\${true && false}:结果${true && false}<br>
\${false && false}:结果${false && false}<br>
\${true || true}:结果${true || true}<br>
\${true || true}:结果${true or true}<br>
\${true || false}:结果${true || false}<br>
\${false || false}:结果${false || false}<br>
\${!true}:结果${!true}<br>
\${!false}:结果${!false}<br>
\${!false}:结果${not false}<br>

</body>
</html>
