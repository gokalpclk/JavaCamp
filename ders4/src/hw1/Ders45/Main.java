package hw1.Ders45;

public class Main {

	public static void main(String[] args) {
		
		ProductManager productManager = new ProductManager();
		Product product = new Product();
		product.id  = 1;
		product.name = "";
		product.price = 10;
		
		productManager.add(product);
		
		DatabaseHelper.Connection.createConnection();
	}

}
