package com.example.PDMProjectDemo;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.*;

@WebServlet(name = "SignupServlet", value = "/SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        MySQLJDBCUtil util = new MySQLJDBCUtil();
        String username = request.getParameter("Username");
        String userData = util.ExecuteQueryValue(String.format("SELECT username FROM Users WHERE username='%s'",username));
        String pass = request.getParameter("Password");
        String fname = request.getParameter("fname");
        String lname =request.getParameter("lname");
        String email = request.getParameter("Email");
        String phone = request.getParameter("PhoneNumber");
        String birthdate = request.getParameter("birthdate");
        String data = String.format("'%s','%s','%s','%s','%s','%s','%s'",fname,lname,username,pass,email,phone,birthdate);
        if(!"".equals(userData)){
            out.println("<html><body>");
            out.println("<h1> Your username is already exists</h1>");
            out.println("</body></html>");
        }
        else {
            util.ExecuteQueryInsert(data, "Users");
            response.sendRedirect("/PDMProjectDemo_war_exploded/WelcomeNewbie.jsp");
        }
    }
}