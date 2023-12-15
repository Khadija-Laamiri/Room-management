
package Project;
import java.sql.*;


public class DBconnection {
     public static Connection getCon(){
           
            java.sql.Connection con = null;
        
            try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/campus_university","root","");
           
            
        }
        catch(Exception e)
        { 
            System.out.println(e);
           
        }
        return con;    
    
    }
    
}
