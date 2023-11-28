/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.entity;

/**
 *
 * @author ritik
 */
public class Appointment {

    private int id;
    private int userId;
    private String name;
    private String gender;
    private int age;
    private String appointmentDate;
    private String email;
    private String phone;
    private String symptom;
    private int doctorId;
    private String address;
    private String status;

    public Appointment() {
    }

    public Appointment(int id, int userId, String name, String gender, int age, String appointmentDate, String email, String phone, String symptom, int doctorId, String address, String status) {
        this.id = id;
        this.userId = userId;
        this.name = name;
        this.gender = gender;
        this.age = age;
        this.appointmentDate = appointmentDate;
        this.email = email;
        this.phone = phone;
        this.symptom = symptom;
        this.doctorId = doctorId;
        this.address = address;
        this.status = status;
    }

    public Appointment(int userId, String name, String gender, int age, String appointmentDate, String email, String phone, String symptom, int doctorId, String address, String status) {
        this.userId = userId;
        this.name = name;
        this.gender = gender;
        this.age = age;
        this.appointmentDate = appointmentDate;
        this.email = email;
        this.phone = phone;
        this.symptom = symptom;
        this.doctorId = doctorId;
        this.address = address;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(String appointmentDate) {
        this.appointmentDate = appointmentDate;
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

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
