package order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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
	public void placeOrder(String customerNum, String pizzaType, String pizzaSize, String drink, String restaurantNum, String deliveryType) {
		try {
			//Variable for connection to DB
			Connection con = openDBConnection();
			Random randOrder = new Random();
			String orderNum = String.valueOf(randOrder.nextInt(999999));
			String status = "baking";
			float orderTotal = 0;

			if (pizzaSize == "large"){
				orderTotal += 16.99;
			}
			else if (pizzaSize == "medium"){
				orderTotal += 14.99;
			}
			else if (pizzaSize == "small"){
				orderTotal += 12.99;
			}
			else {
				orderTotal += 14.99;
				pizzaSize = "medium";
			}
			if (drink == "water") {
				orderTotal += 1.99;
			}
			else if (drink == "pop") {
				orderTotal += 2.49;
			}
			if (deliveryType == "d") {
				orderTotal += 4.99;
			}



			String queryString = "INSERT INTO ORDERS VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";

			PreparedStatement preparedStmt = con.prepareStatement(queryString);

			preparedStmt.clearParameters();

			preparedStmt.setString(1, orderNum);
			preparedStmt.setString(2, customerNum);
			preparedStmt.setString(3, status);
			preparedStmt.setString(4, pizzaType);
			preparedStmt.setString(5, pizzaSize);
			preparedStmt.setString(6, drink);
			preparedStmt.setString(7, restaurantNum);
			preparedStmt.setFloat(8, orderTotal);
			preparedStmt.setString(9, deliveryType);

			//TODO figure out why this does not finish executing
			preparedStmt.executeUpdate();

			con.close();
			preparedStmt.close();

		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
		}

	}

	public List<Order>  ViewResOrders(String rnum) {
		List<Order> list = new ArrayList<>();
		try {
			//Variable for connection to DB
			Connection con = openDBConnection();
			String queryString = "Select o.customer_number, o.deliverytype, o.drink, o.order_number, o.ordertotal, o.pizzasize, o.pizzatype, o.rest_num, o.status";
					queryString+= " from orders o, restaurant r";
					queryString+= " Where o.rest_num = r.rest_num and o.rest_num = ? and o.status <> 'completed'";

			PreparedStatement preparedStmt = con.prepareStatement(queryString);

			preparedStmt.clearParameters();

			preparedStmt.setString(1, rnum);

			ResultSet result = preparedStmt.executeQuery();

			while (result.next()){
				Order o = new Order();
				o.setOrderNum(result.getString(4));
				o.setCustomerNum(result.getString(1));
				o.setStatus(result.getString(9));
				o.setDrink(result.getString(3));
				o.setOrderTotal(result.getInt(5));
				o.setPizzaSize(result.getString(6));
				o.setPizzaType(result.getString(7));
			    list.add(o);
			}
			result.close();
			preparedStmt.close();
			return list;
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
			return list;
		}

	}

	public List<Order> getOrders(String cusNum) {
		List<Order> list = new ArrayList<>();
		try {
			Connection con = openDBConnection();
			//String queryString = "EXEC ViewOrderInfo ?";
			String queryString = "Select o.customer_number, o.deliverytype, o.drink, o.order_number, o.ordertotal, o.pizzasize, o.pizzatype, o.rest_num, o.status";
			queryString+= " from orders o";
			queryString+= " Where o.customer_number = ?";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();
			preparedStmt.setString(1, cusNum);
			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				Order o = new Order();
				o.setOrderNum(result.getString(4));
				o.setCustomerNum(result.getString(1));
				o.setStatus(result.getString(9));
				o.setDrink(result.getString(3));
				o.setOrderTotal(result.getInt(5));
				o.setPizzaSize(result.getString(6));
				o.setPizzaType(result.getString(7));
				list.add(o);
			}
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
			return list;
		}
		return list;
	}

}




