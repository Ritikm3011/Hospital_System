/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.entity;

/**
 *
 * @author ritik
 */
public class Doctor {

    private int id;
    private String name;
    private String dob;
    private String qualification;
    private String specialization;
    private String email;
    private String phone;
    private String password;

    public Doctor() {
        super();
    }

    public Doctor(int id, String name, String dob, String qualification, String specialization, String email, String phone, String password) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.qualification = qualification;
        this.specialization = specialization;
        this.email = email;
        this.phone = phone;
        this.password = password;
    }

    public Doctor(String name, String dob, String qualification, String specialization, String email, String phone, String password) {
        this.name = name;
        this.dob = dob;
        this.qualification = qualification;
        this.specialization = specialization;
        this.email = email;
        this.phone = phone;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
