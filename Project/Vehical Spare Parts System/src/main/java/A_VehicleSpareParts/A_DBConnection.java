package A_VehicleSpareParts;

import java.sql.Connection;
import java.sql.DriverManager;

public class A_DBConnection {
	
	private static  String url = "jdbc:mysql://localhost:3306/online_vehicle_spareparts_management_system";
    private static  String user = "root";
    private static  String pas = "sHaDow@13";
    private static Connection con;
    
    public static Connection getConnection () {
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection(url, user, pas);
    		
    	}
    	catch(Exception e) {
    		System.out.println("Database is Not Connected!");
    	}
    	return con;
    }
    

}
