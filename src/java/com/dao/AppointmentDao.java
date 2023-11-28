/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.sql.*;
import com.entity.*;

/**
 *
 * @author ritik
 */
public class AppointmentDao {

    private Connection con;

    public AppointmentDao(Connection con) {
        this.con = con;
    }

    public boolean addAppointment(Appointment app) {
        boolean f = false;

        try {
            String q = "INSERT INTO hospital.appointment(userId, name, gender, age, appointmentDate, email, phone, symptom, doctorId, address, status) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(q);

            ps.setInt(1, app.getUserId());
            ps.setString(2, app.getName());
            ps.setString(3, app.getGender());
            ps.setInt(4, app.getAge());
            ps.setString(5, app.getAppointmentDate());
            ps.setString(6, app.getEmail());
            ps.setString(7, app.getPhone());
            ps.setString(8, app.getSymptom());
            ps.setInt(9, app.getDoctorId());
            ps.setString(10, app.getAddress());
            ps.setString(11, app.getStatus());

            if (ps.executeUpdate() == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("problem in com.ado.appointmentDao->addAppointment");
        }

        return f;
    }

}
