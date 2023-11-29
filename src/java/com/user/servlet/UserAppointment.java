/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Appointment;
import com.dao.AppointmentDao;
import com.db.ConnectionProvider;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ritik
 */
public class UserAppointment extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int userId = Integer.parseInt(request.getParameter("userId"));
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            int age = Integer.parseInt(request.getParameter("age"));
            String appointmentDate = request.getParameter("appointmentDate");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String symptom = request.getParameter("symptom");
            int doctorId = Integer.parseInt(request.getParameter("doctorId"));
            String address = request.getParameter("address");
            String status = "Pending";

            Appointment app = new Appointment(userId, name, gender, age, appointmentDate, email, phone, symptom, doctorId, address, status);
            AppointmentDao dao = new AppointmentDao(ConnectionProvider.getConnection());

            HttpSession session = request.getSession();

            if (dao.addAppointment(app)) {
                session.setAttribute("successMsg", "Appointment booked successfully.");
                response.sendRedirect("user/user_appointment.jsp");

            } else {
                session.setAttribute("failMsg", "Something went wrong.");
                response.sendRedirect("user/user_appointment.jsp");
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
