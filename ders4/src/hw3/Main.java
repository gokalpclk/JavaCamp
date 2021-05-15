package hw3;

public class Main {
	public static void main(String[] args) {
		Customer customer1 = new Customer(1, "Muhammet Gökalp", "Çelik", 1997, "67993253936");
		Game game1 = new Game(1, "Pes2020", "Pc", 120);
		Campaign campaign1 = new Campaign(1, "Steam Yaz Indirimleri", 5, 10);

		CustomerManager customerManager = new CustomerManager(new MernisServiceAdapter());
		customerManager.add(customer1);
		customerManager.delete(customer1);

		SaleManager saleManager = new SaleManager();
		saleManager.sale(customer1, game1);

		saleManager.campaignSale(customer1, game1, campaign1);

	}

}
