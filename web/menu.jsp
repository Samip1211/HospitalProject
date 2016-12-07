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
        
        response.sendRedirect("http://localhost:8084/hospitalproject/index.jsp");
        
    }
%>




<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Make Appointment</title>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

  
<div class="container">
<h1 class="well"> Welcome to your account Please select from the menu what do you want to do</h1>
<div class="col-lg-12 well">
<div class="row">
<form action="makeappointment" method="post">
<div class="col-sm-12">
<div class="row">
<div class="col-sm-4 form-group">
<div id="appointment" class="input-append date" >

<label>Date</label>
<input type="date" name="datefield" id="datefield" required/>
<span class="add-on">
      <i data-time-icon="icon-time" data-date-icon="icon-calendar">
      </i>
    </span>
</div>
</div>	
<div class="col-sm-4 form-group">
<label>Time</label>
<input type="time" name="timefield" id="timefield" required/>
<input type="text" name="method" value="make" hidden>
</div>
<div class="col-sm-4 form-group">
<input type="submit" class="btn btn-lg btn-info" value="Make Appointment" />
 </div>
 </div>
</div>
</form>
</div>
<div class="row">
<form action="makeappointment" method="post">
<div class="col-sm-12">
<div class="row">
<div class="col-sm-4 form-group">
<div id="appointment" class="input-append date" >

<label>Date</label>
<input type="date" name="changedatefield" id="datefield1"/>
<span class="add-on">
      <i data-time-icon="icon-time" data-date-icon="icon-calendar">
      </i>
    </span>
</div>
</div>	
<div class="col-sm-4 form-group">
 <div id="appointment" class="input-append date" >

<label>Time</label>
<input type="time" name="changetimefield" id="timefield1"/>
<input type="text" name="method" value="update" hidden>
</div>
</div>
<div class="col-sm-4 form-group">
<input type="submit" class="btn btn-lg btn-info" value="Change Appointment" />
 </div>
 </div>
</div>
</form>
</div>

<div class="row">
<div class="col-sm-4 form-group">
<form action="makeappointment" method="post">
<input type="text" name="method" value="view" hidden>   
<input type="submit" class="btn btn-lg btn-info" value="View My Appointment" />
</form>
</div>
    

    
<div class="col-sm-4 form-group">

<form action="makeappointment" method="post">
<input type="text" name="method" value="delete" hidden>   
<input type="submit" class="btn btn-lg btn-info" value="Delete Appointment" />
</form>

</div>
<div class="col-sm-4 form-group">
<form action="makePayment" method="post">
<input type="text" name="payment" value="notpayment" hidden>
<input type="submit" class="btn btn-lg btn-info" value="Make Payment">
</form>
</div>
</div>
    
</div>
</div>






<div class="container">
     <div class="col-lg-12 well">
<div class="row">
    <div class="col-sm-4 form-group"></div>
<div class="col-sm-4 form-group">
<form action="viewreport" method="post">
<input type="text" name="method" value="view_report" hidden>   
<input type="submit" class="btn btn-lg btn-info" value="View Patient Info" size="10" />
</form>
</div>
</div>
</div>
</div>




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
document.getElementById("datefield1").setAttribute("min", today);
console.log(1+2);

</script>
</html>