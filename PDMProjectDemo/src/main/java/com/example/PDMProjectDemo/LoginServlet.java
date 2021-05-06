package com.example.PDMProjectDemo;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
@WebServlet(name = "LoginServlet", value = "/Login-Servlet")
public class LoginServlet extends HttpServlet {

    public void init() {
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        String name = request.getParameter("Username");
        String pass= request.getParameter("Password");
        PrintWriter out = response.getWriter();

        String sql = "SELECT Password, Username FROM User WHERE Username = '" + name + "'";

        try (Connection conn = MySQLJDBCUtil.getConnection();
             Statement stmt  = conn.createStatement();
             ResultSet rs    = stmt.executeQuery(sql)) {

            // loop through the result set
            while (rs.next()) {
                if(pass.equals(rs.getString("Password"))){
                    // Hello
                    out.println("<html><body>");
                    out.println("<h1> Hello " + name + ", welcome back!</h1>");
                    out.println("</body></html>");
                }else
                    {
                        out.println("<html><body>");
                        out.println("<h1> You forgot your password, didn't ya?</h1>");
                        out.println("</body></html>");
                }

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }


    public void destroy() {
    }
}