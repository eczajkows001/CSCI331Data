package employee;

public class DeliveryEmployee extends Employee {

	/**
	 *  Setting all private variables for course
	 */
	private String plate;
	private String range;
	private String currentOrder;


	/**
	 *  Constructors
	 */
	public DeliveryEmployee(String ssn, String last, String first, int hours, String empNum, String restaurantNum, String plate, String range, String currentOrder) {
		super(ssn, last, first, hours, empNum, restaurantNum);
		this.setPlate(plate);
		this.setRange(range);
		this.setCurrentOrder(currentOrder);

	}

	public DeliveryEmployee() {

	}


	public String getPlate() {
		return plate;
	}

	public void setPlate(String plate) {
		this.plate = plate;
	}

	public String getCurrentOrder() {
		return currentOrder;
	}

	public void setCurrentOrder(String currentOrder) {
		this.currentOrder = currentOrder;
	}

	public String getRange() {
		return range;
	}

	public void setRange(String range) {
		this.range = range;
	}





}