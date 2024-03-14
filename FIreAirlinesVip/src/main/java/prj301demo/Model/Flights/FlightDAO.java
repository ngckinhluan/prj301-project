/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj301demo.Model.Flights;
import java.sql.Date;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;
import prj301demo.utils.DBUtils;

/**
 *
 * @author Lenovo
 */
public class FlightDAO {
    public List<FlightDTO> flightlist(String keyword) {
        List<FlightDTO> list = new ArrayList<FlightDTO>();
        try {

                Connection con = DBUtils.getConnection();            
                String sql = " select id, flight_number, flight_name, departure_airport, arrival_airport, departure_time, arrival_time, total_seat  from flights ";

                if (keyword != null && !keyword.isEmpty()){
                    sql += " WHERE flight_number like ? ";
                }

                
                PreparedStatement stmt = con.prepareStatement(sql);
                
                if (keyword != null && !keyword.isEmpty()){
                    stmt.setString(1, "%" + keyword + "%");
                    
                }
                
                ResultSet rs = stmt.executeQuery();
                
                if (rs != null){
                    while (rs.next()){
                        int id = rs.getInt("id");
                        String flight_number = rs.getString("flight_number");
                        String flight_name = rs.getString("flight_name");
                        String departure_airport = rs.getString("departure_airport");
                        String arrival_airport = rs.getString("arrival_airport");
                        Date departure_time = rs.getDate("departure_time");
                        Date arrival_time = rs.getDate("arrival_time");
                        int total_seat = rs.getInt("total_seat");
                        
                        FlightDTO flight = new FlightDTO();
                        
                        flight.setId(id);
                        flight.setFlight_number(flight_number);
                        flight.setFlight_name(flight_name);
                        flight.setDeparture_airport(departure_airport);
                        flight.setArrival_airport(arrival_airport);
                        flight.setDeparture_time(departure_time);
                        flight.setArrival_time(arrival_time);
                        flight.setTotal_seat(total_seat);
                        
                        list.add(flight);
                    }
                }
                con.close();
            } catch (SQLException ex) {                
                System.out.println("Error in servlet. Details:" + ex.getMessage());
                ex.printStackTrace();
                
            }
        
        
        return list;
    }
    
    public FlightDTO load(Integer id){
        String sql = " select id, flight_number, flight_name, departure_airport, arrival_airport, departure_time, arrival_time, total_seat  from flights WHERE id = ? ";
        
        try {
            Connection con = DBUtils.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setLong(1, id);
            
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                int fid = rs.getInt("id");
                String flight_number = rs.getString("flight_number");
                String flight_name = rs.getString("flight_name");
                String departure_airport = rs.getString("departure_airport");
                String arrival_airport = rs.getString("arrival_airport");
                Date departure_time = rs.getDate("departure_time");
                Date arrival_time = rs.getDate("arrival_time");
                int total_seat = rs.getInt("total_seat");

                FlightDTO flight = new FlightDTO();

                flight.setId(fid);
                flight.setFlight_number(flight_number);
                flight.setFlight_name(flight_name);
                flight.setDeparture_airport(departure_airport);
                flight.setArrival_airport(arrival_airport);
                flight.setDeparture_time(departure_time);
                flight.setArrival_time(arrival_time);
                flight.setTotal_seat(total_seat);
                
                return flight;
            }
        } catch (SQLException ex) {
            System.out.println("Error at load in servlet. Details: " + ex.getMessage());
            ex.printStackTrace();
        }
        return null;
    }
        
}
