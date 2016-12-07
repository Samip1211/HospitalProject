/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
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
public class ViewPatientRecord extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          response.setContentType("text/html;charset=UTF-8");
        PrintWriter out= response.getWriter();
        RequestDispatcher rd=request.getRequestDispatcher("/menu.jsp");
        
        String user;
        HttpSession objsesion = request.getSession(false);
        user = (String)objsesion.getAttribute("user");
        
        if(user.isEmpty()){
            out.println("Please Sign In");
           rd.include(request, response);
           return;
        }
        List report = new ArrayList();
        
        Consultas  co = new Consultas();
        
        try{
            report = co.getReport(user);
            if(report!= null){
                rd= request.getRequestDispatcher("report.html");
                out.print("<table>");
                out.print("<tbody>");
                out.print("<tr>");
                out.print("<td>");
                out.print(report.get(1));
                out.print("</td>");
                out.print("<br>");
                out.print("<td>");
                out.print(report.get(2));
                
                out.print("</td>");
                
                out.print("<td>");
                out.print(report.get(0));
                out.print("</td>");
                out.print("</tr>");
                
                out.print("</tbody>");
                out.print("</table>");
                rd.include(request, response);
                
                
            }else{
                out.print("Unable to fetch Report");
                rd.include(request, response);
            }
        }catch(Exception e){
            e.printStackTrace();
            out.print("Unable to fetch Report");
            rd.include(request, response);
        }
    }
    
    
}
