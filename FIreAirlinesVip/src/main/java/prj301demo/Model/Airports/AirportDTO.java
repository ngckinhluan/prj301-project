/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj301demo.Model.Airports;

/**
 *
 * @author Lenovo
 */
public class AirportDTO {
    private int id;
    private String airport_code;
    private String airport_name;
    private String location;

    public AirportDTO() {
    }

    public AirportDTO(int id, String airport_code, String airport_name, String location) {
        this.id = id;
        this.airport_code = airport_code;
        this.airport_name = airport_name;
        this.location = location;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAirport_code() {
        return airport_code;
    }

    public void setAirport_code(String airport_code) {
        this.airport_code = airport_code;
    }

    public String getAirport_name() {
        return airport_name;
    }

    public void setAirport_name(String airport_name) {
        this.airport_name = airport_name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    
    
    
}
