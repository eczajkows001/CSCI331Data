package Review;

import java.sql.*;

public class ReviewController {
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
	
	public void addReview(String restNum, String customerNum, String rating, String review) {
		try {
			Connection con = openDBConnection();
			//String queryString = "EXEC REVIEWS_AddReviews(?, ?, ?, ?)";
			String queryString = "INSERT INTO REVIEWS VALUES(rest_num, customer_number, rating, review) VALUES (?, ?, ?, ?)";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.setString(1,  restNum);
			preparedStmt.setString(2,  customerNum);
			preparedStmt.setString(3, rating);
			preparedStmt.setString(4, review);
			preparedStmt.clearParameters();
			
			preparedStmt.executeUpdate();
			con.close();
			preparedStmt.close();
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
		}
	}
}
