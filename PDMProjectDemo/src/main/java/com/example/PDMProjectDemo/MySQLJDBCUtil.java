package com.example.PDMProjectDemo;
import com.microsoft.sqlserver.jdbc.SQLServerDataSource;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class    MySQLJDBCUtil {

    /**
     * Get database connection
     *
     * @return a Connection object
     * @throws SQLException
     */
    public static Connection getConnection() throws SQLException {
        Connection conn = null;

        try (FileInputStream f = new FileInputStream("C:\\Users\\PC\\Downloads\\Compressed\\PDMProjectDemo\\src\\main\\resources\\db.properties")) {

            // load the properties file
            Properties pros = new Properties();
            pros.load(f);

            // assign db parameters
            String url = pros.getProperty("url");
            // create a connection to the database
            conn = DriverManager.getConnection(url);
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }
    public String ExecuteQuerySignIn(String query) {
        StringBuilder results = new StringBuilder();
        ResultSet rs;
        try (Connection con = MySQLJDBCUtil.getConnection(); Statement stmt = con.createStatement();) {
            rs = stmt.executeQuery(query);
            ResultSetMetaData metaData = rs.getMetaData();
            int numberOfColumn = metaData.getColumnCount();
            while (rs.next()) {
                for(int i =1;i<numberOfColumn;i++){
                    results.append(rs.getObject(i)).append("\t");
                }
                results.append(rs.getObject(numberOfColumn));
            }
        } catch (SQLException throwables) {
        }

        return results.toString();
    }
    public void ExecuteQueryInsert(String data, String table) {
        String SQL = String.format("INSERT INTO %s VALUES(%s)", table, data);
        System.out.println(SQL);
        try (Connection con = MySQLJDBCUtil.getConnection(); Statement stmt = con.createStatement();) {
            stmt.executeQuery(SQL);
        } catch (SQLException throwables) {
        }
    }
    public String ExecuteQueryValue(String query){
        StringBuilder value= new StringBuilder();
        try(Connection con = MySQLJDBCUtil.getConnection(); Statement stmt = con.createStatement();){
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()){
                value.append(rs.getObject(1));
            }
        } catch (SQLException throwables){

        }
        return value.toString();
    }

    
}
