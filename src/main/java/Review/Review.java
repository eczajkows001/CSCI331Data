package Review;

public class Review {
	private String restNum;
	private String customerNum;
	private String rating;
	private String review;
	
	public Review(String restNum, String customerNum, String rating, String review) {
		this.restNum = restNum;
		this.customerNum = customerNum;
		this.rating = rating;
		this.review = review;
	}
	
	public Review() {
		
	}
	
	public String getRestNum() {
		return restNum;
	}
	public void setRestNum(String restNum) {
		this.restNum = restNum;
	}
	public String getCustomerNum() {
		return customerNum;
	}
	public void setCustomerNum(String customerNum) {
		this.customerNum = customerNum;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	
}
