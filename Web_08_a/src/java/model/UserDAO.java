/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

 

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.UserDTO;
import utils.DbUtils;

/**
 *
 * @author LENOVO
 */
 // Username: x' or 1=1 -- 
            // Password: 1
            // SELECT * FROM [dbo].[tblUsers] WHERE [userID]='x' or 1=1 --' AND [password]='hacker';
public class UserDAO {

    public UserDAO() {
    }

    public UserDTO searchById(String id) {
        UserDTO user = null;
        try {
            Connection conn = DbUtils.getConnection();
            
            String sql = "SELECT * FROM tblUsers WHERE userID= ?";
            System.out.println(sql);
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, id);
             
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                String userID = rs.getString("userID");
                String fullName = rs.getString("fullName");
                String password = rs.getString("password");
                String roleID = rs.getString("roleID");
                boolean status = rs.getBoolean("status");
                user = new UserDTO(userID, fullName, password, roleID, status);
            }
        } catch (Exception e) {
            return null;
        }
        System.out.println(user);
        return user;
    }

    public UserDTO login(String username, String password) {
        UserDTO user = searchById(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        } else {
            return null;
        }
    }

}
