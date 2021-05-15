	package hw3;

public class CustomerManager implements BaseCustomerManager {

	private CustomerCheckService customerCheckService;

	public CustomerManager(CustomerCheckService customerCheckManager) {
		super();
		this.customerCheckService = customerCheckManager;
	}

	public CustomerCheckService getCustomerCheckManager() {
		return customerCheckService;
	}

	public void setCustomerCheckManager(CustomerCheckService customerCheckManager) {
		this.customerCheckService = customerCheckManager;
	}

	@Override
	public void add(Customer customer) {
		if (customerCheckService.checkIfRealPerson(customer)) {
			System.out.println(customer.getFirstName() + " added.");
		}
		else {
			System.out.println("The customer could not be created.");
		}
	}

	@Override
	public void update(Customer customer) {
		System.out.println(customer.getFirstName() + " updated.");

	}

	@Override
	public void delete(Customer customer) {
		System.out.println(customer.getFirstName() + " deleted.");

	}

}
