/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj301demo.Model.Bookings;

import java.math.BigDecimal;

/**
 *
 * @author Lenovo
 */
public class BookingDTO {
    private int id;
    private int user_id;
    private String full_name;
    private String email;
    private String phone;
    private String gender;
    private String acommodation;
    private int booked_seats;
    private BigDecimal total_amount;
    private int flight_id;

    public BookingDTO() {
    }

    public BookingDTO(int id, int user_id, String full_name, String email, String phone, String gender, String acommodation, int booked_seats, BigDecimal total_amount, int flight_id) {
        this.id = id;
        this.user_id = user_id;
        this.full_name = full_name;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.acommodation = acommodation;
        this.booked_seats = booked_seats;
        this.total_amount = total_amount;
        this.flight_id = flight_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAcommodation() {
        return acommodation;
    }

    public void setAcommodation(String acommodation) {
        this.acommodation = acommodation;
    }

    public int getBooked_seats() {
        return booked_seats;
    }

    public void setBooked_seats(int booked_seats) {
        this.booked_seats = booked_seats;
    }

    public BigDecimal getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(BigDecimal total_amount) {
        this.total_amount = total_amount;
    }

    public int getFlight_id() {
        return flight_id;
    }

    public void setFlight_id(int flight_id) {
        this.flight_id = flight_id;
    }

    
    
    
}
