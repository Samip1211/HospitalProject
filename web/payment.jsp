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
        
        response.sendRedirect("http://localhost:8084/hospitalproject/index.jsp");
        
    }   

    int amount= co.getAmount(user);
    
%>


<!DOCTYPE html>

<html>
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hospital Health Care System</title>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
</head>

<div class="container">
<div class='row'>
<div class='col-md-4'></div>
<div class='col-md-4'>
<script src='https://js.stripe.com/v2/' type='text/javascript'></script>
<form accept-charset="UTF-8" action="makePayment" class="require-validation" data-cc-on-file="false" data-stripe-publishable-key="pk_bQQaTxnaZlzv4FnnuZ28LFHccVSaj" id="payment-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓" /><input name="_method" type="hidden" value="PUT" /><input name="authenticity_token" type="hidden" value="qLZ9cScer7ZxqulsUWazw4x3cSEzv899SP/7ThPCOV8=" /></div>
<div class='form-row'>
<div class='col-xs-12 form-group required'>
<label class='control-label'>Name on Card</label>
<input class='form-control' name="name" size='4' type='text' maxlength="50" required>
</div>
</div>
<div class='form-row'>
<div class='col-xs-12 form-group card required'>
<label class='control-label'>Card Number</label>
<input autocomplete='off' class='form-control card-number' size='20' type='text'  name="credit_number" maxlength="10" required>
</div>
</div>
<div class='form-row'>
<div class='col-xs-4 form-group cvc required'>
<label class='control-label'>CVC</label>
<input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text' name="cvc" maxlength="3" required>
</div>
<!--div class='col-xs-4 form-group expiration required'>
<label class='control-label'>Expiration</label>
<input class='form-control card-expiry-month' placeholder='MM' size='2' type='text' name='expiration_date'>
</div>
<div class='col-xs-4 form-group expiration required'>
<label class='control-label'> </label>
<input class='form-control card-expiry-year' placeholder='YYYY' size='4' type='text' name='expiration_year'>
</div-->
</div>
<div class='form-row'>
<div class='col-md-12'>
<div class='form-control total btn btn-info'>
  Total:
  <span class='amount'>$<% out.print(amount); %> </span>
</div>
</div>
</div>
<div class='form-row'>
<div class='col-md-12 form-group'>
<input type="text" name="payment" value="payment" hidden>
<button class='form-control btn btn-primary submit-button' type='submit' value="Pay">Pay »</button>
</div>
</div>

</form>
</div>
<div class='col-md-4'></div>
</div>
</div>
</html>