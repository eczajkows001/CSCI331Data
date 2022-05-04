package delivery;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import order.Order;
public class DeliveryController {
	
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
	
	public List<Delivery> viewDeliveryInfo(String orderNum) {
		List<Delivery> list = new ArrayList<Delivery>();
		try {
			Connection con = openDBConnection();
			//String queryString = "EXEC ViewOrderInfo ?";
			String queryString = "Select *";
			queryString+= " from VIEWDELIVERYINFO v";
			queryString+= " where v.CURRENTORDER = ?";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();
			preparedStmt.setString(1, orderNum);
			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				Delivery d = new Delivery();
				d.setCurrentOrder(result.getInt(1));
				d.setLname(result.getString(2));
				d.setStreet(result.getString(3));
				d.setCity(result.getString(4));
				d.setState(result.getString(5));
				d.setZipcode(result.getInt(6));
				list.add(d);
			}
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
			return list;
		}
		return list;
	}
}
