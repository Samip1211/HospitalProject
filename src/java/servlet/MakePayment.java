/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Controlador.BankPayment;
/**
 *
 * @author samip
 */
public class MakePayment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out= response.getWriter();
        RequestDispatcher rd=request.getRequestDispatcher("/menu.jsp");
        
        String user;
        HttpSession objsesion = request.getSession(false);
        user = (String)objsesion.getAttribute("user");
        
        if(request.getParameter("payment").equals("payment")){
        
            try{
            
                BankPayment bank= new BankPayment();
            
                String payment = request.getParameter("pyament");
            
                String credit_number= request.getParameter("credit_number");
            
                String amount = request.getParameter("amount");
            
                String name = request.getParameter("name");
            
                String cvc = request.getParameter("cvc");
            
                bank.makePayment(name, credit_number, amount);
            
            }catch(Exception e){
                e.printStackTrace();
            
            }
        }else{
            if(!user.isEmpty()){
           
            response.sendRedirect("payment.jsp");
            return;
            }else{
                out.print("There been a Problem");
                rd.include(request, response);
            }
        }
    }
   
}
