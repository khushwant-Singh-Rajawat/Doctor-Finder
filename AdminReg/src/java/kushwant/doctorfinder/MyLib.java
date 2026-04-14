 package kushwant.doctorfinder;
import java.sql.*;

public class MyLib 
{
    public Connection createConnection()
    {
        Connection cn=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        
            //create database connection
            String dbpath="jdbc:mysql://localhost:3306/khushwant";
            String dbuser="root";
            String dbpass="";
            cn=DriverManager.getConnection(dbpath,dbuser,dbpass);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return cn;
    }
     public int generateId(String tableName,int startvalue)
    {
            int id=startvalue;
            try
            {

                   Class.forName("com.mysql.jdbc.Driver");
                  String dbpath="jdbc:mysql://localhost:3306/khushwant";
            String dbuser="root";
            String dbpass="";
            
                   Connection cn=DriverManager.getConnection(dbpath,dbuser,dbpass);
        String sql="select * from " + tableName;
                    PreparedStatement pst=cn.prepareStatement(sql);

                    ResultSet rs=pst.executeQuery();

                    if(rs.next())
                    {
                            while(rs.next())
                            {
                                    id=rs.getInt(1);
                            }
                            id=id+1;
                    }
            }
            catch(Exception e)
            {
                    System.out.println(e);
            }
            return id;
    }
}
 