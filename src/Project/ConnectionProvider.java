/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Project;
import java.sql.*;
/**
 *
 * @author ~ LAAMIRI ~
 */
public class ConnectionProvider {
    public static Connection getCon(){
        try
        {
            Class.forName("com.mysq.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/campus_university","root","");
            return con;
        }
        catch(Exception e)
        {
            return null;
        }
    }
}