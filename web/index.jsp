<%-- 
    Document   : account
    Created on : 26-nov-2016, 17:10:22
    Author     : Irene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Health Care System</title>
       
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

 <script>
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
      <title>
Sign in
</title>
</head>

 <div class="container">    
     <div class="panel-heading" align="center"> 
    
        <h3>Dear Patient:Welcome to the Texas Tech University Health Care System.</h3>
     </div>
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                <div class="panel-heading">
			        <div class="panel-title">Sign in </div>
                     <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="forgetpassword.jsp">Forgot password?</a></div>
                 </div>     
                    <div style="padding-top:30px" class="panel-body" >
					 <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
        <form id="loginform" action="startsession" class="form-horizontal" role="form">
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                    <input name="pat_username" id="txtusername" type="email" class="form-control" maxlength="50" oninvalid="setCustomValidity('Please enter a valid email address!')" onchange="try{setCustomValidity('')}catch(e){}"  placeholder="Enter email address" required>                                        
             </div>
                                
             <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input  name="pat_password" id="txtpassword" type="password" class="form-control" name="password" placeholder="Enter password" required>
             </div>
                    
		     <div class="input-group">
                <div class="checkbox">
                    <label>
                        <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                    </label>
                </div>
             </div>


             <div style="margin-top:10px" class="form-group">
                <div class="col-sm-12 controls">
                    <button type="submit" class="btn btn-success" value="Start Session"  id="btnstartsession"  onclick="startSession()" >Login  </button>
                </div>
             </div>
   

             <div class="form-group">
                <div class="col-md-12 control">
                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                 Don't have an account! 
                    <a href="registar.jsp" >
                                Sign Up Here
                    </a>
                    </div>
                </div>
             </div>    
        </form>     
             </div>                     
        </div>  
</div>
      
       