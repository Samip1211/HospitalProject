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
<div class="row">

<div class="col-md-4 col-md-offset-4">
<div class="panel">

<h3 class="text-center">Forgot Password?</h3>
<p>If you have forgotten your password you may reset it here. </p>
<div class="panel-body">

<form class="form" action="forgetpassword" method="post">
<fieldset>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                     <input id="emailInput" placeholder="email address" class="form-control" type="email" oninvalid="setCustomValidity('Please enter a valid email address!')" onchange="try{setCustomValidity('')}catch(e){}" required>
</div>
</div>
<div class="form-group">
<input class="btn btn-lg btn-primary btn-block" value="Send My Password" type="submit">
</div>
</fieldset>
</form>

</div>
</div>
</div



