package customer;

public class Customer {
	private int customerNum;
	private String fname;
	private String lname;
	private String street;
	private String city;
	private String state;
	private int zipcode;
	
	public Customer(int customerNum, String fname, String lname, String street, 
			String city, String state, int zipcode ) {
		this.customerNum = customerNum;
		this.fname = fname;
		this.lname = lname;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
	}
	
	/**
	 *  Getters and setters for all variables
	 */
	public int getCustomerNum() {
		return customerNum;
	}
	public void setCustomerNum(int customerNum) {
		this.customerNum = customerNum;
	}
	public String getFName() {
		return fname;
	}
	public void setFName(String fname) {
		this.fname = fname;
	}
	public String getLName() {
		return lname;
	}
	public void setLName(String lname) {
		this.lname = lname;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setDrink(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setRestaurantNum(String state) {
		this.state = state;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setOrderTotal(int zipcode) {
		this.zipcode = zipcode;
	}
	
}
