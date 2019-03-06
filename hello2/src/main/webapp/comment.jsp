<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/2/28
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP注释</title>
</head>
<body>
HTML 注释（输出注释）：指在客户端查看源代码时能看见注释。如：
<!--这行注释可以在浏览器的源码中查看 -->
<br>
JSP 页注释（隐藏注释）：指注释虽然写在 JSP 程序中，但不会发送给客户，因
<%-- 这行注释可以在浏览器的源码中不能查看--%>
此在客户端查看源代码时不能看见注释。隐藏注释在 JSP 编译时被忽略掉。

</body>
</html>
