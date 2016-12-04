/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Controlador.Consultas;
import java.io.*;

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
public class makeappointment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out= response.getWriter();
       String user;
       HttpSession objsesion = request.getSession(false);
       user = (String)objsesion.getAttribute("user");
       
        String method=request.getParameter("method");
       
        Consultas co= new Consultas();
        RequestDispatcher rd=request.getRequestDispatcher("/menu.jsp"); 
            if(method.equals("make")){
                String pat_date= request.getParameter("datefield");
                String pat_time= request.getParameter("timefield");
        
                out.println(pat_date+ " "+ pat_time);
                if(co.makeAppoint(user, pat_date, pat_time)){
           
             
                out.println("Your Appointment has been set");
           
                rd.include(request, response);
           //rd.forward(request, response);
                }else{
            
                    out.println("Not Succesful");
                }
            }else if(method.equals("update")){
                String pat_date= request.getParameter("changedatefield");
                String pat_time= request.getParameter("changetimefield");
        
                 out.println(pat_date+ " "+ pat_time);
                if(co.changeAppoint(user, pat_date, pat_time)){
              
                out.println("Your Appointment has been reset");
           
                rd.include(request, response);
                }else{
                    out.println("There's been a problem");
                    rd.include(request, response);
                }
            }else if(method.equals("view")){
                String appoint_detail= new String("");
                appoint_detail= co.viewAppoint(user);
                
                if(!appoint_detail.equals("empty")){
                    out.print(appoint_detail);
                    rd.include(request, response);
                }else{
                    out.println("There's been a problem");
                    rd.include(request, response);
                }
            }
            else{
                if(co.deleteAppoint(user)){
                    out.println("Your Appointment has been deleted");
                rd.include(request, response);
                }else{
                    out.println("There's been a problem");
                    rd.include(request, response);
                }
            }
    }
    
    
}
