package com.example.PDMProjectDemo;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.*;

@WebServlet(name = "SignupServlet", value = "/SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql = "INSERT INTO User ( UserID, Username, Password, Email, PhoneNumber) VALUES(?,?,?,?,?)";

        try (Connection conn = MySQLJDBCUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

            // set parameters for statement
            pstmt.setString(1, request.getParameter("ID"));
            pstmt.setString(2, request.getParameter("Username"));
            pstmt.setString(3, request.getParameter("Password"));
            pstmt.setString(4, request.getParameter("Email"));
            pstmt.setString(5, request.getParameter("PhoneNumber"));

            pstmt.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
}