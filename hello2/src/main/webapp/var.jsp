<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2019/2/28
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算1+2+3...+100</title>
</head>
<body>
<%
    int sum=0;
    for(int i=1;i<=100;i++){
        sum+=i;
        if(sum==10)
            out.println("10"+"<br>");
    }

    out.print("1+2+3+...+100="+sum);
%>
<br>
1+2+3+...+100=<%=sum%>
</body>
</html>
