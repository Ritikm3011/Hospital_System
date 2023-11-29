/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entity.Appointment;
import com.entity.User;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Ritik Mondal
 */
public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        super();
        this.con = con;
    }

    public boolean UserRegister(User user) {
        boolean f = false;
        try {
            String q = "insert into hospital.user(name,email,password) values(?,?,?)";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());

            if (ps.executeUpdate() == 1) {
                f = true;

            }

        } catch (Exception e) {
            System.out.println("Error in com.dao.UserDao");
            e.printStackTrace();

        }

        return f;

    }

    public User login(String email, String password) {
        User user = null;
        try {

            String q = "SELECT * FROM hospital.user WHERE email=? AND password=?";
            PreparedStatement stmt = con.prepareStatement(q);
            stmt.setString(1, email);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));

            }

        } catch (Exception e) {
            System.out.println("Error in com.dao.login");
            e.printStackTrace();
        }

        return user;

    }

}
