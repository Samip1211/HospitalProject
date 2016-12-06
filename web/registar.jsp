
<%-- 
Document   : account
Created on : 4-dec-2016, 17:10:22
Author     : Irene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hospital Health Care System</title>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">


<div class="container">
<h1 class="well">Registration Form</h1>
<div class="col-lg-12 well">
<div class="row">
 <form action="registeruser" method="post">
<div class="col-sm-12">
<div class="row">
<div class="col-sm-4 form-group">
<label>First Name</label>
<input type="text" placeholder="Enter First Name Here" name="pat_name" class="form-control" maxlength="50" required>
</div>
</div>
<div class="row">
<div class="col-sm-4 form-group">
<label>Last Name</label>
<input type="text" placeholder="Enter Last Name Here" name="pat_lastname" class="form-control" maxlength="50" required>
</div>
</div>					
<div class="form-group">
<div class="row">
<div class="col-sm-4 form-group">
<label>Address</label>
<textarea placeholder="Enter Address Here" rows="3" name="pat_address" class="form-control"maxlength="50" required></textarea>
</div>
</div>
</div>	
<div class="row">
<div class="col-sm-3 form-group">
<label>City</label>
<input type="text" placeholder="Enter City Name Here" name="pat_city" class="form-control" maxlength="50" required>
</div>	
</div>	
<div class="row">
<div class="col-sm-3 form-group">
<label>State</label>
<input type="text" placeholder="Enter State Name Here" name="pat_state" class="form-control" maxlength="20" required>
</div>	
</div>	
<div class="row">
<div class="col-sm-3 form-group">
<label>Zipcode</label>
<input type="text" placeholder="Enter Zip Code Here" name="pat_zipcode" class="form-control" maxlength="7" required>
</div>	
</div>	
<div class="row">
<div class="col-sm-3 form-group">
<label>Phone Number</label>
<input type="text" placeholder="Enter Phone Number Here" name="pat_phonenumber" class="form-control" maxlength="10" required>
</div>	
</div>	

<div class="row">
<div class="col-sm-4 form-group">
<label>User name(Email address)</label>
<input type="text" id="email" placeholder="Enter Email Address Here" name="pat_username" class="form-control" maxlength="50" required>
</div>
</div>
<div class="row">
<div class="col-sm-4 form-group">
<label>Password</label>
<input type="password" id="password" placeholder="Password"  name="pat_password" class="form-control" maxlength="30" required>
</div>
</div>
<div class="row">
<div class="col-sm-4 form-group">
<label>Confirm Password</label>
<input type="password" id="password" placeholder="Password" class="form-control" required>
</div>
</div>	
</div>					
</div>

 <input type="submit" class="btn btn-lg btn-info" value="Create Account" />
                  			
</div>
</form> 
</div>
</div>
</div>