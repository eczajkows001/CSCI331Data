package order;

public class Order {
	
	/**
	 *  Setting all private variables for course
	 */
	private String orderNum;
	private String customerNum;
	private String status;
	private String pizzaType;
	private String pizzaSize;
	private String drink;
	private String restaurantNum;
	private float orderTotal;
	private char deliveryType;
	
	/**
	 *  Constructors
	 */
	public Order(String orderNum, String customerNum, String status, String pizzaType, String pizzaSize, String drink, String restaurantNum, float orderTotal, char deliveryType) {

		this.orderNum = orderNum;
		this.customerNum = customerNum;
		this.status = status;
		this.pizzaType = pizzaType;
		this.pizzaSize = pizzaSize;
		this.drink = drink;
		this.restaurantNum = restaurantNum;
		this.orderTotal = orderTotal;
		this.deliveryType = deliveryType;
	}
	
	public Order() {
		
	}
	
	/**
	 *  Getters and setters for all variables
	 */
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getCustomerNum() {
		return customerNum;
	}
	public void setCustomerNum(String customerNum) {
		this.customerNum = customerNum;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPizzaType() {
		return pizzaType;
	}
	public void setPizzaType(String pizzaType) {
		this.pizzaType = pizzaType;
	}
	public String getDrink() {
		return drink;
	}
	public void setDrink(String drink) {
		this.drink = drink;
	}
	public String getRestaurantNum() {
		return restaurantNum;
	}
	public void setRestaurantNum(String restaurantNum) {
		this.restaurantNum = restaurantNum;
	}
	public float getOrderTotal() {
		return orderTotal;
	}
	public void setOrderTotal(float orderTotal) {
		this.orderTotal = orderTotal;
	}
	public char getDeliveryType() {
		return deliveryType;
	}
	public void setDeliveryType(char deliveryType) {
		this.deliveryType = deliveryType;
	}

	public String getPizzaSize() {
		return pizzaSize;
	}

	public void setPizzaSize(String pizzaSize) {
		this.pizzaSize = pizzaSize;
	}
	
	
}