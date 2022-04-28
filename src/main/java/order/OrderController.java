package order;

import java.sql.*;
import oracle.jdbc.*;
import employee.Employee;
import order.Order;
import java.util.Random;

public class OrderController {
	
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
	public void placeOrder(String customerNum, String pizzaType, String pizzaSize, String drink, String restaurantNum, char deliveryType) {
		try {
			//Variable for connection to DB
			Connection con = openDBConnection();
			Random randOrder = new Random();
			String orderNum = String.valueOf(randOrder.nextInt(999999));
			String status = "baking";
			
			String queryString = "INSERT INTO ORDERS VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			PreparedStatement preparedStmt = con.prepareStatement(queryString);

			preparedStmt.clearParameters();
			
			preparedStmt.setString(1, orderNum);
			preparedStmt.setString(2, customerNum);
			preparedStmt.setString(3, status);
			preparedStmt.setString(4, pizzaType);
			preparedStmt.setString(5, pizzaSize);
			preparedStmt.setString(6, customerNum);
			preparedStmt.setString(7, status);
			preparedStmt.setString(8, pizzaType);
			preparedStmt.setString(9, pizzaType);

			//TODO figure out why this does not finish executing
			preparedStmt.executeUpdate();

			con.close();
			preparedStmt.close();

		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
		}

	}

}