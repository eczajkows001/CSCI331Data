package restaurant;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import menu.Menu;

public class restaurantController {
	
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
	
	public void addRestaurant(String resNum, String hours, String managerName, String currentDeals, String phoneNumber) {
		try{
			Connection con = openDBConnection();
			CallableStatement c = con.prepareCall("begin Resturant_Add_Items (?, ?, ?, ?, ?); end;" );
			c.clearParameters();
			c.setString(1, resNum);
			c.setString(2, hours);
			c.setString(3, managerName);
			c.setString(4, currentDeals);
			c.setString(5, phoneNumber);
			c.execute();
			c.close();
			con.close();
			
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
	
	public void viewResInfo(int resNum) {
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
	
	public List<restaurant> getResInfo() {
		List<restaurant> list = new ArrayList<>();
		try {
			Connection con = openDBConnection();
			String queryString = "Select r.rest_num, r.hours, r.managername, r.currentdeals, r.phone_num from restaurant r";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();
			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				restaurant r = new restaurant();
				r.setResNum(result.getString(1));
				r.setHours(result.getString(2));
				r.setManagerName(result.getString(3));
				r.setCurrentDeals(result.getString(4));
				r.setPhoneNumber(result.getString(5));
				
				list.add(r);
			}
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
			return list;
		}
		return list;
	}
	
	
	

}
