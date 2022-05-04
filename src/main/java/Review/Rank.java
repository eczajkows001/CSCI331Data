package Review;

public class Rank {
	private String restNum;
	private int rating;
	private int rank;

	public Rank(String restNum, int rating, int rank) {
		this.restNum = restNum;
		this.rating = rating;
		this.rank = rank;
	}

	public Rank() {

	}

	public String getRestNum() {
		return restNum;
	}
	public void setRestNum(String restNum) {
		this.restNum = restNum;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
}