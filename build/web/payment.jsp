<%-- 
    Document   : payment
    Created on : Dec 5, 2016, 4:31:28 PM
    Author     : samip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Controlador.Consultas" %>
<%
    Consultas co = new Consultas();

    String user = new String() ;
    try{
    HttpSession objsesion = request.getSession(false);
    user = (String)objsesion.getAttribute("user");
    if(user.equals("")|| user == null){
        response.sendRedirect("index.jsp");
        }
    }catch(Exception e){
        
        response.sendRedirect("http://localhost:8084/HospitalProject/index.jsp");
        
    }   

    int amount= co.getAmount(user);
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        You owe $<% out.print(amount); %> .
        <form action="makePayment" method="post">
        Enter the amount You want to pay <input type="number" name="amount"/>
        <input type="submit" value="Pay">
        </form>
    </body>
</html>
