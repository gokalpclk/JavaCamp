package hw2;

import hw2.Abstract.BaseCustomerManager;
import hw2.Adapters.MernisServiceAdapter;
import hw2.Concrete.NeroCustomerManager;
import hw2.Concrete.StarbucksCustomerManager;
import hw2.Entities.Customer;

public class Main {

	public static void main(String[] args) {
		BaseCustomerManager customerManager = new StarbucksCustomerManager(new MernisServiceAdapter());
		customerManager.save(new Customer(1, "Muhammet Gökalp", "Çelik", 1997, "67993253936"));

	}

}
