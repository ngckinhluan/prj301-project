/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj301demo.Model.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import prj301demo.Model.Users.UserDTO;
import prj301demo.utils.DBUtils;

/**
 *
 * @author DUNGHUYNH
 */
public class UserDAO{
    
    public UserDTO login(String email, String password){
        
        UserDTO user = null;
        try {

                Connection con = DBUtils.getConnection();            
                String sql = " SELECT email, name, role, phone FROM users ";
                sql += " WHERE email = ?  AND password = ?";
                               
                PreparedStatement stmt = con.prepareStatement(sql);
                stmt.setString(1, email);
                stmt.setString(2, password);
                
                ResultSet rs = stmt.executeQuery();
                
                if (rs != null){
                    if (rs.next()){
                        
                        user = new UserDTO();
                        user.setEmail(rs.getString("email"));
                        user.setName(rs.getString("name"));
                        user.setRole(rs.getString("role"));
                        user.setPhone(rs.getString("phone"));
                    }
                }
                con.close();
            } catch (SQLException ex) {                
                System.out.println("Error in servlet. Details:" + ex.getMessage());
                ex.printStackTrace();
                
            }
            return user;
        
    }
   
}
