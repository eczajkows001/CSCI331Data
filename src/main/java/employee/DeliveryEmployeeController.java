package employee;

import java.sql.*;
import oracle.jdbc.*;
import order.Order;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import delivery.Delivery;

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
	public void AcceptDelivery(String orderNum, String ssn) {
			  try {
			        //Vairable for connection to DB
			        Connection con = openDBConnection();
			        
			        CallableStatement cStmt = con.prepareCall ("begin deliveryemp_acceptdelivery(?, ?); end;");

			        
			        cStmt.clearParameters();
			        cStmt.setString(1, orderNum);
			        cStmt.setString(2, ssn);


			        cStmt.execute();
			        
			        cStmt.close();
			        con.close();
			      }
			      catch(SQLException E){
			        System.out.println("SQL problems:" + E);
			      }
		  	}
	public void CompleteDelivery(String orderNum, String ssn) {
		try {
	        //Variable for connection to DB
	        Connection con = openDBConnection();
	        
	        CallableStatement cStmt = con.prepareCall ("begin DELIVERYEMP_CompleteDelivery(?, ?); end;");
	        
	        cStmt.clearParameters();
	        cStmt.setString(1, orderNum);
	        cStmt.setString(2, ssn);


	        cStmt.execute();
	        
	        cStmt.close();
	        con.close();
	      }
	      catch(SQLException E){
	        System.out.println("SQL problems:" + E);
	      }
  	}
	public ArrayList<ArrayList<String>> viewAvailableDeliveries() {
		ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>>();
		try {
			Connection con = openDBConnection();
			//String queryString = "EXEC ViewOrderInfo ?";
			String queryString = "Select *";
			queryString+= " from ORDERS";
			queryString+= " where Status = 'baking' AND DELIVERYTYPE = 'd'";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();

			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				ArrayList<String> d = new ArrayList<String>();
				d.add(result.getString(1));
				d.add(result.getString(2));
				d.add(result.getString(3));
				d.add(result.getString(4));
				d.add(result.getString(5));
				d.add(result.getString(6));
				d.add(result.getString(7));
				d.add(String.valueOf(result.getString(8)));
				d.add(result.getString(9));
				list.add(d);
				
			}
			return list;
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
			
		}
		return list;
	}
public List<Order> viewMyDeliveries(String ssn) {
		List<Order> list = new ArrayList<Order>();
		try {
			System.out.println("here");
			Connection con = openDBConnection();
			//String queryString = "EXEC ViewOrderInfo ?";
			String queryString = "Select o.*";
			queryString+= " from ORDERS o, DELIVERY_EMPLOYEEs e";
			queryString+= " where o.order_number = e.currentorder";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();

			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				Order o = new Order();
				o.setOrderNum(result.getString(1));
				o.setCustomerNum(result.getString(2));
				o.setStatus(result.getString(3));
				o.setPizzaType(result.getString(4));
				o.setPizzaSize(result.getString(5));
				o.setDrink(result.getString(6));
				o.setRestaurantNum(result.getString(7));
				o.setOrderTotal(Float.parseFloat(result.getString(8)));
				o.setDeliveryType(result.getString(9).charAt(0));
				list.add(o);

				}
				
			System.out.println("executed");
			return list;
		}
		catch(SQLException E){
			System.out.println("this one");
			System.out.println("SQL problems:" + E);
			
		}
		return list;
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