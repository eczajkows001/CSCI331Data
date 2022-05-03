package employee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DeliveryEmployeeController {

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
	public void acceptDelivery(String orderNum, String ssn) {
		try {
			//Variable for connection to DB
			Connection con = openDBConnection();

			String queryString = "Query Here";

			PreparedStatement preparedStmt = con.prepareStatement(queryString);

			preparedStmt.clearParameters();

			preparedStmt.setString(1, orderNum);


			//TODO figure out why this does not finish executing
			preparedStmt.executeUpdate();

			con.close();
			preparedStmt.close();

		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
		}

	}
	public void CompleteDelivery(String orderNum, String ssn) {
		try {
			//Variable for connection to DB
			Connection con = openDBConnection();

			String queryString = "Query Here";

			PreparedStatement preparedStmt = con.prepareStatement(queryString);

			preparedStmt.clearParameters();

			preparedStmt.setString(1, orderNum);


			//TODO figure out why this does not finish executing
			preparedStmt.executeUpdate();

			con.close();
			preparedStmt.close();

		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
		}

	}
	public void viewDeliveryInfo(String orderNum) {
		try {
			//Variable for connection to DB
			Connection con = openDBConnection();

			String queryString = "Query Here";

			PreparedStatement preparedStmt = con.prepareStatement(queryString);

			preparedStmt.clearParameters();

			preparedStmt.setString(1, orderNum);


			//TODO figure out why this does not finish executing
			preparedStmt.executeUpdate();

			con.close();
			preparedStmt.close();

		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
		}

	}
//	public static DeliveryEmployee getDeliveryEmpInfo(String ssn) {
//		DeliveryEmployee s = new DeliveryEmployee();
//
//		try {
//	        //Vairable for connection to DB
//	        Connection con = openDBConnection();
//
//	        String queryString = "SELECT * FROM Delivery_Employees E WHERE E.ssn = ?";
//
//	        PreparedStatement preparedStmt = con.prepareStatement(queryString);
//
//	        preparedStmt.clearParameters();
//	        preparedStmt.setString(1, ssn);
//
//	        ResultSet result = preparedStmt.executeQuery();
//
//	        result.next();
//
//	        System.out.println(result.getString(2));
//	        s.setProfessorName(result.getString(2));
//
//
//
//	        return s;
//
//	      }
//	      catch(SQLException E){
//	        System.out.println("SQL problems:" + E);
//	      }
//
//		return s;
//	}
}