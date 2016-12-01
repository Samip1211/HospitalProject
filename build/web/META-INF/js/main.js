/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


    document.getElementById("btnstartsession").addEventListener("click", function(){
        
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
    });

