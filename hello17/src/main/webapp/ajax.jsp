<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/5/8
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    var xmlHttp;
    function createXMLHttpRequest()
    {
        if(window.ActiveXObject)
        {
            xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if(window.XMLHttpRequest)
        {
            xmlHttp=new XMLHttpRequest();
        }
    }
    function createQueryString(){
        var username=document.getElementById("username").value;
        var password=document.getElementById("password").value;
        var queryString="username="+username+"&"+"password="+password;
        return queryString;
    }
    function sendGet() {
        createXMLHttpRequest();
        var queryString="ajax?"+createQueryString();
        xmlHttp.onreadystatechange=handleStateChange;
        xmlHttp.open("GET",queryString,true);
        xmlHttp.send(null);
    }

    function sendPost()
    {
        createXMLHttpRequest();
        var url="ajax";
        var queryString=createQueryString();
        xmlHttp.open("POST",url,true);
        xmlHttp.onreadystatechange=handleStateChange;
        xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        xmlHttp.send(queryString);
    }
    function handleStateChange() {
        if(xmlHttp.readyState==4){
            if(xmlHttp.status==200){
                parseResults();
            }
        }
        
    }
    function parseResults() {
        alert(xmlHttp.responseText);
    }

</script>
<div>
    <input type="text" name="username" id="username">
    <input type="text" name="password" id="password">
    <input type="button" value="sendGet" onclick="sendGet()">
    <input type="button" value="sendPost" onclick="sendPost()">
</div>
</body>
</html>
