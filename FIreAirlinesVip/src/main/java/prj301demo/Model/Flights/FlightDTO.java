/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj301demo.Model.Flights;

import java.sql.Date;

/**
 *
 * @author Lenovo
 */
public class FlightDTO {
    private int id;
    private String flight_number;
    private String flight_name;
    private int total_seat;
    private Date departure_time;
    private Date arrival_time;
    private String airport_id;
    private String departure_airport; 
    private String arrival_airport;

    public FlightDTO() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFlight_number() {
        return flight_number;
    }

    public void setFlight_number(String flight_number) {
        this.flight_number = flight_number;
    }

    public String getFlight_name() {
        return flight_name;
    }

    public void setFlight_name(String flight_name) {
        this.flight_name = flight_name;
    }

    public int getTotal_seat() {
        return total_seat;
    }

    public void setTotal_seat(int total_seat) {
        this.total_seat = total_seat;
    }

    public Date getDeparture_time() {
        return departure_time;
    }

    public void setDeparture_time(Date departure_time) {
        this.departure_time = departure_time;
    }

    public Date getArrival_time() {
        return arrival_time;
    }

    public void setArrival_time(Date arrival_time) {
        this.arrival_time = arrival_time;
    }

    public String getAirport_id() {
        return airport_id;
    }

    public void setAirport_id(String airport_id) {
        this.airport_id = airport_id;
    }

    public String getDeparture_airport() {
        return departure_airport;
    }

    public void setDeparture_airport(String departure_airport) {
        this.departure_airport = departure_airport;
    }

    public String getArrival_airport() {
        return arrival_airport;
    }

    public void setArrival_airport(String arrival_airport) {
        this.arrival_airport = arrival_airport;
    }

    public FlightDTO(int id, String flight_number, String flight_name, int total_seat, Date departure_time, Date arrival_time, String airport_id, String departure_airport, String arrival_airport) {
        this.id = id;
        this.flight_number = flight_number;
        this.flight_name = flight_name;
        this.total_seat = total_seat;
        this.departure_time = departure_time;
        this.arrival_time = arrival_time;
        this.airport_id = airport_id;
        this.departure_airport = departure_airport;
        this.arrival_airport = arrival_airport;
    }

    
    
    
}
