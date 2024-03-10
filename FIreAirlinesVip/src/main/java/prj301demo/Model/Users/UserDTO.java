/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package prj301demo.Model.Users;

/**
 *
 * @author DUNGHUYNH
 */
public class UserDTO {
    
    private int id;
    private String name;
    private String password; // Lưu ý: Trong thực tế, mật khẩu thường không được truyền dưới dạng DTO
    private String email;
    private String full_name;
    private String phone;
    private String role;

    public UserDTO() {
    }

    public UserDTO(int id, String name, String password, String email, String full_name, String phone, String role) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.full_name = full_name;
        this.phone = phone;
        this.role = role;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    
  
   

}
