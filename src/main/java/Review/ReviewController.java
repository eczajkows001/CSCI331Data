package Review;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import order.Order;

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

			CallableStatement c = con.prepareCall("begin REVIEWS_ADDREVIEW (?, ?, ?, ?); end;");
			c.clearParameters();
			c.setString(1,  restNum);
			c.setString(2,  customerNum);
			c.setString(3, rating);
			c.setString(4, review);
	        c.execute();  
	        c.close();
	        con.close();
			//String queryString = "EXEC REVIEWS_AddReviews(?, ?, ?, ?)";
			//String queryString = "INSERT INTO REVIEWS VALUES(rest_num, customer_number, rating, review) VALUES (?, ?, ?, ?)";
					
			//PreparedStatement preparedStmt = con.prepareStatement(queryString);
//			preparedStmt.setString(1,  restNum);
//			preparedStmt.setString(2,  customerNum);
//			preparedStmt.setString(3, rating);
//			preparedStmt.setString(4, review);
//			preparedStmt.clearParameters();
//			
//			preparedStmt.executeUpdate();
//			preparedStmt.close();

			con.close();
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
		}
	}
	
	
	public List<Review> getReviews() {
		List<Review> list = new ArrayList<>();
		try {
			Connection con = openDBConnection();
			String queryString = "Select r.rest_num, r.customer_number, r.rating, r.review from reviews r";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();
			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				Review r = new Review();
				r.setRestNum(result.getString(1));
				r.setCustomerNum(result.getString(2));
				r.setRating(result.getString(3));
				r.setReview(result.getString(4));
				list.add(r);
			}
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
			return list;
		}
		return list;
	}
	
	public List<Review> searchReviewsByRes(String rnum) {
		List<Review> list = new ArrayList<>();
		try {
			Connection con = openDBConnection();
			String queryString = "Select r.rest_num, r.customer_number, r.rating, r.review from reviews r where r.rest_num = ?";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();
			preparedStmt.setString(1, rnum);
			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				Review r = new Review();
				r.setRestNum(result.getString(1));
				r.setCustomerNum(result.getString(2));
				r.setRating(result.getString(3));
				r.setReview(result.getString(4));
				list.add(r);
			}
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
			return list;
		}
		return list;
	}
	
	public List<Review> searchReviewsByCust(String cnum) {
		List<Review> list = new ArrayList<>();
		try {
			Connection con = openDBConnection();
			String queryString = "Select r.rest_num, r.customer_number, r.rating, r.review from reviews r where r.customer_number = ?";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();
			preparedStmt.setString(1, cnum);
			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				Review r = new Review();
				r.setRestNum(result.getString(1));
				r.setCustomerNum(result.getString(2));
				r.setRating(result.getString(3));
				r.setReview(result.getString(4));
				list.add(r);
			}
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
			return list;
		}
		return list;
	}
	
	public List<Review> searchReviewsByBoth(String rnum, String cnum) {
		List<Review> list = new ArrayList<>();
		try {
			Connection con = openDBConnection();
			String queryString = "Select r.rest_num, r.customer_number, r.rating, r.review from reviews r where r.rest_num = ? and r.customer_number = ?";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();
			preparedStmt.setString(1, rnum);
			preparedStmt.setString(2, cnum);
			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				Review r = new Review();
				r.setRestNum(result.getString(1));
				r.setCustomerNum(result.getString(2));
				r.setRating(result.getString(3));
				r.setReview(result.getString(4));
				list.add(r);
			}
		}
		catch(SQLException E){
			System.out.println("SQL problems:" + E);
			return list;
		}
		return list;
	}
	
	public List<Rank> findRanks() {
		List<Rank> list = new ArrayList<>();
		try {
			Connection con = openDBConnection();
			String queryString = "select rest_num, SUM(To_Number(rating)) as rating, DENSE_RANK() OVER (Order by SUM(To_Number(rating))) as RANK from reviews group by rest_num";
			PreparedStatement preparedStmt = con.prepareStatement(queryString);
			preparedStmt.clearParameters();
			ResultSet result = preparedStmt.executeQuery();
			while (result.next()){
				Rank r = new Rank();
				r.setRestNum(result.getString(1));
				r.setRating(result.getInt(2));
				r.setRank(result.getInt(3));
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
