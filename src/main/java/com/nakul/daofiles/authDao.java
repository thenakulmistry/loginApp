package com.nakul.daofiles;

import java.sql.*;

public class authDao {

    public boolean checkLogin(String user, String pass) {
        String query = "select * from users where username = ? and password = ?";
        try(Connection conn = DBUtil.getConnection();){
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean addUser(String user, String email, String pass){
        String query = "insert into users (username, email, password) values (?,?,?)";
        try(Connection connection = DBUtil.getConnection()){
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, email);
            ps.setString(3, pass);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        }
        catch(SQLException e){
            System.out.println(e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}
