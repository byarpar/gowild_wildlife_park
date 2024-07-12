package Entity;

public class Diet {

	private int diet_id;
	private String diet_type;
	private int feeds_per_day;

	public int getDiet_id() {
		return diet_id;
	}

	public void setDiet_id(int diet_id) {
		this.diet_id = diet_id;
	}

	

	public String getDiet_type() {
		return diet_type;
	}

	public void setDiet_type(String diet_type) {
		this.diet_type = diet_type;
	}

	public int getFeeds_per_day() {
		return feeds_per_day;
	}

	public void setFeeds_per_day(int feeds_per_day) {
		this.feeds_per_day = feeds_per_day;
	}

}
