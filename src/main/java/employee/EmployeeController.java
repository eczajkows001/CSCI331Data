package employee;

import java.sql.*;
import oracle.jdbc.*;
import order.Order;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class EmployeeController {
	
	public Connection openDBConnection() {
		try {
			// Load driver and link to driver manager
			Class.forName("oracle.jdbc.OracleDriver");
			// Create a connection to the specified database
			Connection myConnection = DriverManager.getConnection("jdbc:oracle:thin:@//cscioraclerh7srv.ad.csbsju.edu:1521/" +
					"csci.cscioraclerh7srv.ad.csbsju.edu","TEAM03", "team03");
			return myConnection;
		} catch (Exception E) {
			E.printStackTrace();
		}
		return null;
	}
	
	public void viewEmployees() {
	List<Employee> employeeList = new ArrayList<Employee>();
	try {
	Connection con = openDBConnection();
	
	
	String queryString = "Select e.SSN, e.last, elfirst, e.Hours, e.Employee_Num, e.Rest_Num"
			+ "from EMPLOYEES e, RESTAURANT r"
			+ "where e.rest_num = r.rest_num";
	PreparedStatement preparedStmt = con.prepareStatement(queryString);
	ResultSet result = preparedStmt.executeQuery();
	while (result.next()) {
		Employee e = new Employee();
		e.setLast(result.getString(1));
		e.setFirst(result.getString(1));
		e.setHours(Integer.parseInt(result.getString(1)));
		e.setEmpNum("12341324");
		e.setRestaurantNum("3");
	}
	}
		catch(SQLException E) {
			System.out.println("SQL problems:" + E);
		}
	}

	public void closeResults(ResultSet result) {
		try {
			result.close();
		} catch (Exception E) {
			E.printStackTrace();
		}
	}

	public void closeStatement(Statement stmt) {
		try {
			stmt.close();
		} catch (Exception E) {
			E.printStackTrace();
		}
	}

	public void closeConnection(Connection con) {
		try {
			con.close();
		} catch (Exception E) {
			E.printStackTrace();
		}
	}
	
}