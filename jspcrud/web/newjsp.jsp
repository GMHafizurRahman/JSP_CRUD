<%-- 
    Document   : newjsp
    Created on : Dec 4, 2019, 5:02:23 PM
    Author     : bitl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            out.println("Your IP address is: " + request.getRemoteAddr());
        %>

        <p> Local Date today: <%= (new java.util.Date()).toString()%></p>
    </body>
</html>
