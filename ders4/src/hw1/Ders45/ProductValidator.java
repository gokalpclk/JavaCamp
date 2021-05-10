package hw1.Ders45;

public class ProductValidator {
	//static constructor
	static {
		
	}
	
	public static boolean isValid(Product product) {
		if(product.price>0  && !product.name.isEmpty()) {
			return true;
		}
		else
			return false;
		
	}
	
	//statik olmadigi icin gozukmez
	public void bisey() {
		
	}
	
	public static class BaskaClass{
		
	}

}
