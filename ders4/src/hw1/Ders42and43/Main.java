package hw1.Ders42and43;

public class Main {

	public static void main(String[] args) {
		//CustomerDal customerDal = new OracleCustomerDal();
		CustomerManager customerManager = new CustomerManager(new MySqlCustomerDal());
		//CustomerManager customerManager = new CustomerManager();
		//customerManager.customerDal = ;
		customerManager.add();

	}

}
