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

/**
 *
 * @author samip
 */
public class MakePayment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doPost(request, response); //To change body of generated methods, choose Tools | Templates.
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out= response.getWriter();
        RequestDispatcher rd=request.getRequestDispatcher("/payment.jsp");
        
        String user;
        HttpSession objsesion = request.getSession(false);
        user = (String)objsesion.getAttribute("user");
        
        if(user.isEmpty()){
           out.println("Please Sign In");
           rd.include(request, response);
           return;
        }
    }
   
}
