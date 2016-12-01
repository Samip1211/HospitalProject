<%-- 
    Document   : menu
    Created on : 26-nov-2016, 19:45:17
    Author     : DOCHAVEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession objsesion = request.getSession(false);
    String user = (String)objsesion.getAttribute("user");
    if(user.equals("")){
        response.sendRedirect("index.jsp");
        }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h3>Dear Patient:  <% out.println(user);%> welcome to your account! Please select from the menu what do you want to do</h3>
    </center>
    
    
    
    </body>
</html>
