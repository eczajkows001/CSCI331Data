package restaurant;

public class restaurant {
	
	private String resNum;
	private String hours;
	private String managerName;
	private String currentDeals;
	private String phoneNumber;
	
	public restaurant(String resNum, String hours, String managerName, String currentDeals, String phoneNumber) {
		this.resNum = resNum;
		this.hours = hours;
		this.managerName = managerName;
		this.currentDeals = currentDeals;
		this.phoneNumber = phoneNumber;
		
	}
	
	public restaurant() {
		
	}
	
	/**
	 *  Getters and setters for all variables
	 */
	public String getResNum() {
		return resNum;
	}
	public void setResNum(String resNum) {
		this.resNum = resNum;
	}
	
	public String getHours() {
		return hours;
		
	}
	public void setHours(String hours) {
		this.hours = hours;
	}
	
	public String getManagerName() {
		return managerName;
		
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	
	public String getCurrentDeals() {
		return currentDeals;
		
	}
	public void setCurrentDeals(String currentDeals) {
		this.currentDeals = currentDeals;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
		
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	

}
