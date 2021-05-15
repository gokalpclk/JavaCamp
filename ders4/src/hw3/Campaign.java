package hw3;

public class Campaign {
	private int id;
	private String name;
	private int campaignDay;
	private double discount;

	void Campaign() {
	}

	public Campaign(int id, String name, int campaignDay, double discount) {
		super();
		this.id = id;
		this.name = name;
		this.campaignDay = campaignDay;
		this.discount = discount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getLowerLimit() {
		return campaignDay;
	}

	public void setLowerLimit(int campaignDay) {
		this.campaignDay = campaignDay;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

}
