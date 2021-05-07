package com.example.PDMProjectDemo;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.*;

@WebServlet(name = "SignupServlet", value = "/SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MySQLJDBCUtil util = new MySQLJDBCUtil();
        String username = request.getParameter("Username");
        String pass = request.getParameter("Password");
        String fname = request.getParameter("fname");
        String lname =request.getParameter("lname");
        String email = request.getParameter("Email");
        String phone = request.getParameter("PhoneNumber");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String data = String.format("'%s','%s','%s','%s','%s','%s','%s/%s/%s',2",fname,lname,username,pass,email,phone,day,month,year);
        util.ExecuteQueryInsert(data,"Users");
        PrintWriter out = response.getWriter();
        out.println("<h1>Your account is ready to use</h1>");
        try {
            response.wait(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        response.sendRedirect("index.jsp");
    }
}