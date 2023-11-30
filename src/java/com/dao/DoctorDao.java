/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.util.*;
import java.sql.*;
import com.entity.Doctor;

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
            System.out.println("error in com.dao.DoctorDao->getAllDoctor");
            e.printStackTrace();
        }

        return list;
    }

    public Doctor getDoctorById(int id) {

        Doctor doctor = null;
        try {
            String q = "SELECT * FROM hospital.doctor WHERE ID=?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, id);
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

            }

        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->getDoctorById");
            e.printStackTrace();
        }

        return doctor;
    }

    public boolean editDoctor(Doctor doctor) {
        boolean f = false;

        try {

            String q = "UPDATE hospital.doctor SET name=?, dob=?, qualification=?, specialization=?, email=?, phone=?, password=? WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, doctor.getName());
            ps.setString(2, doctor.getDob());
            ps.setString(3, doctor.getQualification());
            ps.setString(4, doctor.getSpecialization());
            ps.setString(5, doctor.getEmail());
            ps.setString(6, doctor.getPhone());
            ps.setString(7, doctor.getPassword());
            ps.setInt(8, doctor.getId());

            if (ps.executeUpdate() == 1) {
                f = true;

            }
        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->registerDoctor");
            e.printStackTrace();
        }
        return f;
    }

    public boolean deleteDoctorById(int id) {
        boolean f = false;
        try {
            String q = "DELETE FROM hospital.doctor WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, id);
            if (ps.executeUpdate() == 1) {
                f = true;
            }
        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->deleteDoctorById");
            e.printStackTrace();
        }
        return f;
    }

    public Doctor doctorLogin(String email, String password) {
        Doctor doctor = null;

        try {

            String q = "SELECT * FROM hospital.doctor WHERE email=? AND password = ?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, email);
            ps.setString(2, password);

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
            }

        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->doctorLogin");
            e.printStackTrace();
        }

        return doctor;
    }

    public int countDoctor() {
        int i = 0;
        try {
            String q = "select * from hospital.doctor";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                i++;
            }

        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->countDoctor");
            e.printStackTrace();
        }
        return i;
    }

    public int countAppointmentByDoctorId(int doctorId) {
        int i = 0;
        try {
            String q = "select * from hospital.appointment where doctorId = ?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, doctorId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                i++;
            }

        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->countAppointment");
            e.printStackTrace();
        }
        return i;
    }

    public boolean editDoctorProfile(Doctor doctor) {
        boolean f = false;

        try {

            String q = "UPDATE hospital.doctor SET name=?, dob=?, qualification=?, specialization=?, email=?, phone=?  where id =?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, doctor.getName());
            ps.setString(2, doctor.getDob());
            ps.setString(3, doctor.getQualification());
            ps.setString(4, doctor.getSpecialization());
            ps.setString(5, doctor.getEmail());
            ps.setString(6, doctor.getPhone());

            ps.setInt(7, doctor.getId());

            if (ps.executeUpdate() == 1) {
                f = true;

            }
        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->public boolean editDoctorProfile(Doctor doctor)");
            e.printStackTrace();
        }
        return f;
    }
    
     public boolean checkOldPasswod(int doctorId, String oldPassword) {
        boolean f = false;
        try {
            String q = "SELECT * FROM hospital.doctor WHERE id=? AND password = ?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, doctorId);
            ps.setString(2, oldPassword);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                f = true;
            }

        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->checkOldPasswod");
            e.printStackTrace();
        }

        return f;
    }
    
    
    public boolean changePasswod(int doctorId, String newPassword) {
        boolean f = false;
        try {
            String q = "UPDATE hospital.doctor SET password = ? WHERE id=?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, newPassword);
            ps.setInt(2, doctorId);

            if (ps.executeUpdate() == 1) {
                f = true;

            }

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                f = true;
            }

        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->checkOldPasswod");
            e.printStackTrace();
        }

        return f;
    }


}
