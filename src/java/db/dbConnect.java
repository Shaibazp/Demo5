/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author dell
 */
public class dbConnect {

    public static Connection dbConnection(){
        Connection conn=null;
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemist", "root", "root");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return conn;
    }

}
