package com.example.PDMProjectDemo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "MainServlet", value = "/MainServlet")
public class MainServlet extends HttpServlet {
    MySQLJDBCUtil util;
    DateTimeFormatter dtf;
    LocalDateTime now;
    public void init() {
        util = new MySQLJDBCUtil();
        dtf = DateTimeFormatter.ofPattern("MM/dd/yyyy");
        now = LocalDateTime.now();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productID = request.getParameter("productID");
        String quantity = request.getParameter("quanlity");
        util.ExecuteQueryInsert(String.format("%s,'%s',%s,%d",quantity,dtf.format(now),productID,LoginServlet.orderID),"Payment (amount,paymentDate,productID,orderID)");
        response.sendRedirect("page1.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
