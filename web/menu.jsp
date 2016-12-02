<%-- 
    Document   : menu
    Created on : 26-nov-2016, 19:45:17
    Author     : DOCHAVEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
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
    <br>
    <p id="appointment" >
        <form action="" method="post">
        Date <input type="date" id="datefield" />
        Time <input type="time" id="timefield"/>
        
        <input type="submit" value="Make Appointment" ></button>
        </form>
    </p>
    <p>
        <br>
        <button >Change an Appointment</button>
    </p>
    <p>
        <br>
        <button>Cancel an Appointment</button>
    </p>
    <script type="text/javascript">
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth()+1; //January is 0!
            var yyyy = today.getFullYear();
            if(dd<10){
                dd='0'+dd
            } 
            if(mm<10){
                mm='0'+mm
            } 

            today = yyyy+'-'+mm+'-'+dd;
            document.getElementById("datefield").setAttribute("min", today);
            console.log(1+2);
        </script>
    </body>
</html>
