<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/8
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
<script>
    function send() {
        var username=$("#username").val();
        var password=$("#password").val();
        $.post("ajax",{"username":username,"password":password},function (data) {
            alert(data);
        });
    }

</script>
<div>
    <input type="text" name="username" id="username">
    <input type="text" name="password" id="password">
    <input type="button" value="jquery" onclick="send()">
</div>
</body>
</html>
