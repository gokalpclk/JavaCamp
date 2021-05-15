package hw3;

public class Game {
	private int id;
	private String name;
	private String platform;
	private double unitPrice;

	void Game() {

	}

	public Game(int id, String name, String platform, double unitPrice) {
		super();
		this.id = id;
		this.name = name;
		this.platform = platform;
		this.unitPrice = unitPrice;
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

	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

}
