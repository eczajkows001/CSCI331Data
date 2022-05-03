package employee;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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

	public List<Employee> viewEmployees() {
	List<Employee> employeeList = new ArrayList<>();
	try {
	Connection con = openDBConnection();
	String queryString = "Select ssn, last, first, hours, employee_num, rest_num from EMPLOYEES";
	Statement Stmt = con.createStatement();
	ResultSet result = Stmt.executeQuery(queryString);
	while (result.next()) {
		Employee e = new Employee();
		e.setSsn(result.getString(1));
		e.setLast(result.getString(2));
		e.setFirst(result.getString(3));
		e.setHours(Integer.parseInt(result.getString(4)));
		e.setEmpNum(result.getString(5));
		e.setRestaurantNum(result.getString(6));
		employeeList.add(e);
	}
	result.close();
	Stmt.close();
	return employeeList;
	}
		catch(SQLException E) {
			System.out.println("SQL problems:" + E);
			return employeeList;
		}
	}
	
	public List<Employee> searchEmployees(String employeeNum) {
		List<Employee> employeeList = new ArrayList<>();
		try {
		Connection con = openDBConnection();
		String queryString = "Select ssn, last, first, hours, employee_num, rest_num from EMPLOYEES Where employee_num = ?";
		
		PreparedStatement prepStmt = con.prepareStatement(queryString);
		
		prepStmt.clearParameters();

		prepStmt.setString(1, employeeNum);
		
		ResultSet result = prepStmt.executeQuery();
		
		while (result.next()) {
			Employee e = new Employee();
			e.setSsn(result.getString(1));
			e.setLast(result.getString(2));
			e.setFirst(result.getString(3));
			e.setHours(Integer.parseInt(result.getString(4)));
			e.setEmpNum(result.getString(5));
			e.setRestaurantNum(result.getString(6));
			employeeList.add(e);
		}
		result.close();
		prepStmt.close();
		return employeeList;
		}
			catch(SQLException E) {
				System.out.println("SQL problems:" + E);
				return employeeList;
			}
		}

	public void addNewEmployee(String firstName, String lastName, String SSN, String EmployeeNumber, String hours, String resNumber) {
		try{
			Connection con = openDBConnection();
			CallableStatement c = con.prepareCall("begin Employee_Add_Employee (?, ?, ?, ?, ?, ?); end;" );
			c.clearParameters();
			c.setString(1, SSN);
			c.setString(2, lastName);
			c.setString(3, firstName);
			c.setString(4, hours);
			c.setString(5, EmployeeNumber);
			c.setString(6, resNumber);
			c.execute();
			c.close();
			con.close();
		}
		catch(SQLException E) {
			System.out.println("SQL problems:" + E);
		}
	}

	public void removeEmployee(String employeeNum) {
		try{
			Connection con = openDBConnection();
			String queryString  = "DELETE FROM EMPLOYEES WHERE EMPLOYEE_NUM=?";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			
			preparedStmt.clearParameters();
			preparedStmt.setString(1, employeeNum);

			preparedStmt.executeUpdate();
			con.close();
			preparedStmt.close();
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