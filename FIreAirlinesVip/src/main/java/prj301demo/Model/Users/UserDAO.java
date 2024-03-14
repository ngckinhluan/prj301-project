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
import java.util.ArrayList;
import java.util.List;
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
    
    public  List<UserDTO> list(String keyword){
        List<UserDTO> list = new ArrayList<UserDTO>();
        try {
            Connection conn = DBUtils.getConnection();
            String sql1 = " SELECT id, name, phone, email, password from users ";
            if(keyword!=null && !keyword.isEmpty()){
                sql1 += " WHERE name like ? ";
            }
            
            PreparedStatement stmt = conn.prepareStatement(sql1);
            
            if(keyword!=null && !keyword.isEmpty()){
                stmt.setString(1, "%" + keyword + "%");
            }
            
            ResultSet rs = stmt.executeQuery();
            
            if(rs != null){
                while(rs.next()){
                    
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    String email = rs.getString("email");
                    String password = rs.getString("password");
                    
                    UserDTO user = new UserDTO();
                    user.setId(id);
                    user.setName(name);
                    user.setPhone(phone);
                    user.setEmail(email);
                    user.setPassword(password);
                    
                    list.add(user);
                }
            }
            
            conn.close();
        } catch (SQLException e) {
            System.out.println("Error in DAO:" +e.getMessage());
            e.printStackTrace();
        }
        return list;
    }
    
    public UserDTO load(int id){
        String sql = " SELECT id, name, phone, email, password from users WHERE role like N'user' ";
        try {
            
        } catch (Exception e) {
        }
        return null;
    }
   
}
