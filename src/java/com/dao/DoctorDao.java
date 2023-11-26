/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.util.*;
import java.sql.*;
import com.entity.Doctor;

/**
 *
 * @author ritik
 */
public class DoctorDao {

    private Connection con;

    public DoctorDao(Connection con) {
        this.con = con;
    }

    public boolean registerDoctor(Doctor doctor) {
        boolean f = false;

        try {

            String q = "INSERT INTO hospital.doctor (name, dob, qualification, specialization, email, phone, password) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, doctor.getName());
            ps.setString(2, doctor.getDob());
            ps.setString(3, doctor.getQualification());
            ps.setString(4, doctor.getSpecialization());
            ps.setString(5, doctor.getEmail());
            ps.setString(6, doctor.getPhone());
            ps.setString(7, doctor.getPassword());

            if (ps.executeUpdate() == 1) {
                f = true;

            }
        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->registerDoctor");
            e.printStackTrace();
        }
        return f;
    }

    public List<Doctor> getAllDoctor() {
        List<Doctor> list = new ArrayList<Doctor>();
        Doctor doctor = null;
        try {
            String q = "SELECT * FROM hospital.doctor";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                doctor = new Doctor();
                doctor.setId(rs.getInt(1));
                doctor.setName(rs.getString(2));
                doctor.setDob(rs.getString(3));
                doctor.setQualification(rs.getString(4));
                doctor.setSpecialization(rs.getString(5));
                doctor.setEmail(rs.getString(6));
                doctor.setPhone(rs.getString(7));
                doctor.setPassword(rs.getString(8));

                list.add(doctor);
            }

        } catch (Exception e) {
        }

        return list;
    }

}
