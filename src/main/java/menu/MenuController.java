package menu;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MenuController {
	
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
	
	
	public void viewMenu(int resNum) {
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
	
	public List<Menu> getMenuItem() {
		List<Menu> list = new ArrayList<>();
		try {
			Connection con = openDBConnection();
			String queryString = "Select m.rest_num, m.menuItem from menu m";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();
			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				Menu r = new Menu();
				r.setResNum(result.getString(1));
				r.setMenuItem(result.getString(2));
				
				list.add(r);
			}
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
			return list;
		}
		return list;
	}
	
	public void addNewMenuItem(String resNum, String menuItem) {
		try{
			Connection con = openDBConnection();
			CallableStatement c = con.prepareCall("begin MENU_ADD_ITEMS (?, ?); end;" );
			c.clearParameters();
			c.setString(1, resNum);
			c.setString(2, menuItem);
			System.out.println(resNum);
			System.out.println(menuItem);
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

}

