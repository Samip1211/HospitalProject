/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Controlador.Consultas;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author samip
 */
public class makeappointment extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
        response.setContentType("text/html;charset=UTF-8");
        
       String user;
       HttpSession objsesion = request.getSession(false);
       user = (String)objsesion.getAttribute("user");
    
        
        String pat_date= request.getParameter("datefield");
        String pat_time= request.getParameter("timefield");
        
        Consultas co= new Consultas();
        
        if(co.makeAppoint(user, pat_date, pat_time)){
           System.out.println("Appointment Done");
        }else{
            
        }
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
}
