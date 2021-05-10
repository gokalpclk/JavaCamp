package hw1.Ders42and43;

public class CustomerManager {
	CustomerDal customerDal;
	
	public CustomerManager() {
		
	}
	
	
	public CustomerManager(CustomerDal customerDal) {
		this.customerDal = customerDal;
	}


	public void add() {
		//is kodlari
		customerDal.add();
		
	}

}
