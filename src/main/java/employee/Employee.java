package employee;

public class Employee {
	
	/**
	 *  Setting all private variables for course
	 */
	protected String ssn;
	protected String last;
	protected String first;
	protected int hours;
	protected String empNum;
	protected String restaurantNum;

	
	/**
	 *  Constructors
	 */
	public Employee(String ssn, String last, String first, int hours, String empNum, String restaurantNum) {

		this.ssn = ssn;
		this.last = last;
		this.first = first;
		this.hours = hours;
		this.empNum = empNum;
		this.restaurantNum = restaurantNum;
	}
	
	public Employee() {
		
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public int getHours() {
		return hours;
	}

	public void setHours(int hours) {
		this.hours = hours;
	}

	public String getEmpNum() {
		return empNum;
	}

	public void setEmpNum(String empNum) {
		this.empNum = empNum;
	}

	public String getRestaurantNum() {
		return restaurantNum;
	}

	public void setRestaurantNum(String restaurantNum) {
		this.restaurantNum = restaurantNum;
	}


	
	
	
}