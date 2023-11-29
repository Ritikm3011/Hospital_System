/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.sql.*;
import com.entity.*;
import java.util.ArrayList;
import java.util.List;

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

    public List<Appointment> getAllAppointmentByUserId(int userId) {
        List<Appointment> list = new ArrayList<Appointment>();
        Appointment app = null;

        try {
            String q = "SELECT * FROM hospital.appointment WHERE userId=?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                app = new Appointment();

                app.setId(rs.getInt(1));
                app.setUserId(rs.getInt(2));
                app.setName(rs.getString(3));
                app.setGender(rs.getString(4));
                app.setAge(rs.getInt(5));
                app.setAppointmentDate(rs.getString(6));
                app.setEmail(rs.getString(7));
                app.setPhone(rs.getString(8));
                app.setSymptom(rs.getString(9));
                app.setDoctorId(rs.getInt(10));
                app.setAddress(rs.getString(11));
                app.setStatus(rs.getString(12));

                list.add(app);

            }

        } catch (Exception e) {
            System.out.println("Error in com.dao.UserDao->getAllAppointmentByUserId");
            e.printStackTrace();
        }

        return list;
    }

    public List<Appointment> getAllAppointmentByDoctorId(int doctorId) {
        List<Appointment> list = new ArrayList<Appointment>();
        Appointment app = null;

        try {
            String q = "SELECT * FROM hospital.appointment WHERE doctorId=?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, doctorId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                app = new Appointment();

                app.setId(rs.getInt(1));
                app.setUserId(rs.getInt(2));
                app.setName(rs.getString(3));
                app.setGender(rs.getString(4));
                app.setAge(rs.getInt(5));
                app.setAppointmentDate(rs.getString(6));
                app.setEmail(rs.getString(7));
                app.setPhone(rs.getString(8));
                app.setSymptom(rs.getString(9));
                app.setDoctorId(rs.getInt(10));
                app.setAddress(rs.getString(11));
                app.setStatus(rs.getString(12));

                list.add(app);

            }

        } catch (Exception e) {
            System.out.println("Error in com.dao.UserDao->getAllAppointmentByUserId");
            e.printStackTrace();
        }

        return list;
    }

}
