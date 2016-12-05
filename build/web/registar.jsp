    <%-- 
    Document   : registar
    Created on : 26-nov-2016, 18:51:55
    Author     : DOCHAVEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital System Healthcare</title>
    </head>
    <body>
           <h3>Create an Account</h3>
        <form action="registeruser" method="post">
            
            <label>Name:</label>
            <input type="text" name="pat_name" /><br>
            <label>Lastname:</label>
            <input type="text" name="pat_lastname" /><br>
            <label>Address:</label>
            <input type="text" name="pat_address" /><br>
            <label>City:</label>
            <input type="text" name="pat_city" /><br>
            <label>State:</label>
            <input type="text" name="pat_state" /><br>
            <label>Zipcode:</label>
            <input type="text" name="pat_zipcode" /><br>
            <label >Phone number:</label>
            <input type="text" name="pat_phonenumber" /><br>
            <label>Patient Username</label>
            <input type="text" name="pat_username" /><br>
            <label>Patient Password</label>
            <input type="text" name="pat_password" /><br>
            <input type="submit" value="Create Account" />
                  
            
        </form>
        
    </body>
</html>
