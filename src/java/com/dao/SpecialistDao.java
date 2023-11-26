/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entity.*;
import java.sql.*;

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

}
