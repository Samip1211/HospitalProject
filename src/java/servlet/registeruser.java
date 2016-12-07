/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import include.TrippleDes;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author DOCHAVEZ
 */
public class registeruser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        RequestDispatcher rd=request.getRequestDispatcher("/registar.jsp");
        TrippleDes trippleDes;
        try{
            trippleDes = new TrippleDes();
            String pat_name = request.getParameter("pat_name");
            String pat_lastname = request.getParameter("pat_lastname");
            String pat_address = request.getParameter("pat_address");
            String pat_city = request.getParameter("pat_city");
            String pat_state = request.getParameter("pat_state");
            String pat_zipcode = request.getParameter("pat_zipcode");
            String pat_phonenumber = request.getParameter("pat_phonenumber");
            String pat_username = request.getParameter("pat_username");
            String pat_password = trippleDes.encrypt(request.getParameter("pat_password"));
        
            Consultas co = new Consultas();
            if(co.registrar(pat_name, pat_lastname, pat_address, pat_city, pat_state, pat_zipcode, pat_phonenumber, pat_username, pat_password)){
                response.sendRedirect("index.jsp");
            }else{
                out.print("Theres been a problem");
                rd.include(request, response);
            }
        }catch(Exception e){
           e.printStackTrace();
           response.sendRedirect("index.jsp");
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
