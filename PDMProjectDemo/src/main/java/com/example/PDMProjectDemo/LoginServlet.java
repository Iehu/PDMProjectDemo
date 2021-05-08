package com.example.PDMProjectDemo;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    MySQLJDBCUtil util;
    DateTimeFormatter dtf;
    LocalDateTime now;
    public static int orderID;
    public void init() {
        util = new MySQLJDBCUtil();
        dtf = DateTimeFormatter.ofPattern("MM/dd/yyyy");
        now = LocalDateTime.now();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        response.setContentType("text/html");
        String name = request.getParameter("Username");
        String pass= request.getParameter("Password");
        System.out.println(name);
        System.out.println(pass);
        PrintWriter out = response.getWriter();
        String[] query1 = util.ExecuteQuerySignIn(String.format("SELECT username,password FROM Users WHERE username='%s'",name)).split("\t");
        System.out.println(name.equals(query1[0]));
        System.out.println(pass.equals(query1[1]));
        if(name.equals(query1[0]) && pass.equals(query1[1])){
            util.ExecuteQueryInsert(String.format("NULL, '%s',1,1",dtf.format(now)),"Invoice");
            orderID = Integer.parseInt(util.ExecuteQueryValue("SELECT MAX(orderID) FROM Invoice"));
            response.sendRedirect("page1.jsp");
        }
        else{
            out.println("<html><body>");
            out.println("<h1> You forgot your password, didn't ya?</h1>");
            out.println("</body></html>");
        }
    }


    public void destroy() {
    }
}