/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entity.*;
import java.sql.*;
import java.util.*;

/**
 *
 * @author ritik
 */
public class SpecialistDao {

    private Connection con;

    public SpecialistDao(Connection con) {
        super();
        this.con = con;
    }

    public boolean addSpecialist(String specialistName) {
        boolean f = false;

        try {
            String q = "insert into hospital.specialist(specialistName) values(?);";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, specialistName);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            System.out.println("Erron in com.dao.SpecialistDao.java");
            e.printStackTrace();

        }

        return f;
    }

    public List<Specialist> getAllSpecialist() {
        List<Specialist> list = new ArrayList<Specialist>();
        Specialist s = null;
        try {
            String q = "SELECT * FROM hospital.specialist ORDER BY specialistName";
            PreparedStatement stmt = con.prepareStatement(q);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                s = new Specialist();
                s.setId(rs.getInt(1));
                s.setSpecialistName(rs.getString(2));
                list.add(s);

            }

        } catch (Exception e) {
            System.out.println("Erron in com.dao.SpecialistDao.java->getAllSpecialist()");
            e.printStackTrace();
        }

        return list;
    }
    
    
    public int countSpecialist() {
        int i = 0;
        try {
            String q = "select * from hospital.specialist";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()) {
                i++;
            }
            
        } catch (Exception e) {
            System.out.println("error in com.dao.DoctorDao->countDoctor");
            e.printStackTrace();
        }
        return i;
    }

}
