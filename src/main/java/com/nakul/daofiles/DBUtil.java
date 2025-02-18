package com.nakul.daofiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    private static final String url = "jdbc:mysql://localhost:3306/loginapp";
    private static final String user = "root";
    private static final String password = "1234";
    static {
        try {
            // Add debug output
            System.out.println("Attempting to load MySQL driver...");
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("MySQL driver loaded successfully!");
        } catch (ClassNotFoundException e) {
            System.out.println("Error loading MySQL driver: " + e.getMessage());
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        try {
            // Add debug output
            System.out.println("Attempting to connect to database...");
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Database connection successful!");
            return conn;
        } catch (SQLException e) {
            System.out.println("Database connection failed: " + e.getMessage());
            throw e;
        }
    }
}
