package hw1.Ders42and43;

public class MySqlCustomerDal implements CustomerDal, Repository{

	@Override
	public void add() {
		System.out.println("MySql eklendi");
		
	}

}
