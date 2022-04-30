package customer;

import java.sql.*;
public class CustomerController {
	
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
	
	public void viewAccountInfo(String customerNum) {
		try {
			Connection con = openDBConnection();
			String queryString = "QUERY HERE";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.close();
			con.close();
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
		}
	}
	
	public void viewOrder(String customerNum) {
		try {
			Connection con = openDBConnection();
			String queryString = "QUERY HERE";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.close();
			con.close();
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
		}
	}
}
