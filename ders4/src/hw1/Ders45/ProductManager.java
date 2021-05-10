package hw1.Ders45;

public class ProductManager {
	public void add(Product product) {
		if(ProductValidator.isValid(product)) {
			System.out.println("eklendi");
		}
		else {
			
		}
	}

}
