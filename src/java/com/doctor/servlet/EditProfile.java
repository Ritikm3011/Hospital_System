/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.doctor.servlet;

import com.dao.DoctorDao;
import com.db.ConnectionProvider;
import com.entity.Doctor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ritik
 */
public class EditProfile extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String name = request.getParameter("doctor_name");
            String dob = request.getParameter("dob");
            String qualification = request.getParameter("qualification");
            String specialization = request.getParameter("specialization");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = "";
            
            int id = Integer.parseInt(request.getParameter("id"));
            
//            out.print(id+"<br>");
//            out.print(name+"<br>");
//            out.print(qualification+"<br>");
//            out.print(specialization+"<br>");
//            out.print(email+"<br>");
//            out.print(phone+"<br>");
//            out.print(password+"<br>");
            
            

            Doctor doctor = new Doctor(id, name, dob, qualification, specialization, email, phone, password);
            DoctorDao dao = new DoctorDao(ConnectionProvider.getConnection());
            HttpSession session = request.getSession();

           
            
            if (dao.editDoctorProfile(doctor)) {
                Doctor newDoctor = dao.getDoctorById(id);
                session.setAttribute("successMsg", "Profile updated successfully.");
                session.setAttribute("doctorObj", newDoctor);
                response.sendRedirect("doctor/editProfile.jsp");

            } else {
                session.setAttribute("failMsg", "Something went wrong.");
                response.sendRedirect("doctor/editProfile.jsp");
            }
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
