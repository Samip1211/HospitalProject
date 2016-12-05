<%-- 
    Document   : account
    Created on : 26-nov-2016, 17:10:22
    Author     : DOCHAVEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Healtcare System</title>
        <script type="text/javascript">
            /* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


    function startSession(){
        
        var username = document.getElementById("txtusername").value;
        var password = document.getElementById("txtpassword").value;
        
        var flag = false;
        
        console.log(flag);
        
        if(username.length > 0 && password.length > 0){
            flag = true;
       }
       if(flag){
           document.getElementById("forminicio").submit();
       }else{
           alert("Please provide Username and Password");
       }
   }


        </script>
        
      </head>
        <body> 
        
    <center>
        <h3>Dear Patient:Welcome to the Texas Tech University Hospital Web System.
            Please enter your username and password. </h3>
        <form action="startsession" method="post" id="forminicio">
            <label>Patient Username:</label>
            <input type="text" name="pat_username" id="txtusername" /><br>
            <label>Patient Password:</label>
            <input type="text" name="pat_password" id="txtpassword" /><br>
            <br>
            <input type="submit" value="Start Session" id="btnstartsession"  onclick="startSession()"/>
           
        </form>
        <br>
        In case you do not have an account in the system, please click <a href="registar.jsp"> here</a>
        to create one...
        </center>
        <br>
        <center>
        This project has been developer for the next student from Texas Tech University:<br>
        
         <table border="0"> 
            <tr>
                <td rowspan="3">Nickname of the Team-work:Nexus</td>
                <td>Maria Irene</td>
                <td>Dian Lin</td>
            </tr>
            <tr>
                <td>Samip</td>
                <td>Danny Chavez</td>
            </tr>
             </table>
        
       <IMG src="images/TTU_white_HR.jpg">
        </center>
        
    </body>
</html>
