<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/4/25
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    function fresh() {
        var time=new Date().toString()
        document.getElementById("img").src="code?time="+time;

    }
</script>
<form action="verify.jsp" method="post">
    <input type="text" name="ucode">
    <img src="code" alt="display" id="img">
    <a href="#" onclick="fresh()">刷新验证码</a>
    <input type="submit" value="verify">

</form>
</body>
</html>
