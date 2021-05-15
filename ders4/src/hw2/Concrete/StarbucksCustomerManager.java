package hw2.Concrete;

import hw2.Abstract.BaseCustomerManager;
import hw2.Abstract.CustomerCheckService;
import hw2.Entities.Customer;

public class StarbucksCustomerManager extends BaseCustomerManager {
	private CustomerCheckService customerCheckService;

	public StarbucksCustomerManager(CustomerCheckService customerCheckService) {
		super();
		this.customerCheckService = customerCheckService;
	}

	public CustomerCheckService getCustomerCheckService() {
		return customerCheckService;
	}

	public void setCustomerCheckService(CustomerCheckService customerCheckService) {
		this.customerCheckService = customerCheckService;
	}

	@Override
	public void save(Customer customer) {
		if (customerCheckService.checkIfRealPerson(customer)) {
			System.out.println("Star");
			super.save(customer);
		} else {
			System.out.println("Not a valid person");
		}

	}

}
