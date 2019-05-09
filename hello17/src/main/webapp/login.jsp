<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/9
  Time: 15:55
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
    function login() {
        var username=$("#username").val();
        var password=$("#password").val();
        $.post("login",{"u":username,"p":password},function (data) {
            if(data==1)
                location.href="index.jsp";
            else{
                alert("用户名或者密码错误，请重新登录");
                location.href="login.jsp";
            }

        });
        
    }
</script>
<div>
    <input type="text" name="username" id="username"><br>
    <input type="text" name="password" id="password"><br>
    <input type="button" value="login" onclick="login()">
</div>
</body>
</html>
