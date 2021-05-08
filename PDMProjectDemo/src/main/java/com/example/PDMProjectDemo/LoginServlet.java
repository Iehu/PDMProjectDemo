package com.example.PDMProjectDemo;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
@WebServlet(name = "LoginServlet", value = "/Login-Servlet")
public class LoginServlet extends HttpServlet {
    MySQLJDBCUtil util;
    public void init() {
        util = new MySQLJDBCUtil();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        String name = request.getParameter("Username");
        String pass= request.getParameter("Password");
        PrintWriter out = response.getWriter();
        String[] query1 = util.ExecuteQuerySignIn(String.format("SELECT username,password,roleID FROM Users WHERE username='%s'",name)).split("\t");
        if(name.equals(query1[0]) && pass.equals(query1[1])&&query1[2].equals("2")){
            response.sendRedirect("index.jsp");
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