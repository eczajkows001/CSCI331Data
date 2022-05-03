package delivery;

public class Delivery {
	private int currentOrder;
	private String fname;
	private String street;
	private String city;
	private String state;
	private int zipcode;
	
	public Delivery(int currentOrder, String fname, String street, 
			String city, String state, int zipcode ) {
		this.currentOrder = currentOrder;
		this.fname = fname;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
	}
	
	public Delivery() {
		
	}

	public int getCurrentOrder() {
		return currentOrder;
	}

	public void setCurrentOrder(int currentOrder) {
		this.currentOrder = currentOrder;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
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

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	

	
}
