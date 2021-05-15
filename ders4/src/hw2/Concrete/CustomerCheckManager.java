package hw2.Concrete;

import hw2.Abstract.CustomerCheckService;
import hw2.Entities.Customer;

public class CustomerCheckManager implements CustomerCheckService {

	@Override
	public boolean checkIfRealPerson(Customer customer) {
		return true;
	}

}
