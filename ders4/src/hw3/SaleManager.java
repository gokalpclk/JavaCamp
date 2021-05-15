package hw3;

public class SaleManager implements BaseSaleManager {

	@Override
	public void sale(Customer customer, Game game) {
		System.out.println(customer.getFirstName() + " " + customer.getLastName() + " purchased " + game.getName()
				+ " for this price " + game.getUnitPrice());
	}

	@Override
	public void campaignSale(Customer customer, Game game, Campaign campaign) {
		System.out.println(customer.getFirstName() + " " + customer.getLastName() + " purchased " + game.getName()
				+ " for this price " + (game.getUnitPrice() - game.getUnitPrice() * campaign.getDiscount() / 100));

	}

}
