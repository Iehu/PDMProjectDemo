package com.example.PDMProjectDemo;
import com.microsoft.sqlserver.jdbc.SQLServerDataSource;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
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
        SQLServerDataSource ds = new SQLServerDataSource();
        ds.setUser("sa");
        ds.setPassword("sa");
        ds.setServerName("localhost");
        ds.setPortNumber(1434);
        ds.setDatabaseName("sql_shopping");
        conn = ds.getConnection();
        return conn;
    }

}
