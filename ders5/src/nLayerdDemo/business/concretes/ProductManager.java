package nLayerdDemo.business.concretes;

import java.util.List;

import nLayerdDemo.business.abstracts.ProductService;
import nLayerdDemo.core.LoggerService;
import nLayerdDemo.dataAccess.abstracts.ProductDao;
import nLayerdDemo.entities.concretes.Product;

public class ProductManager implements ProductService {

	private ProductDao productDao;
	private LoggerService loggerService;

	public ProductManager(ProductDao productDao, LoggerService loggerService) {
		super();
		this.productDao = productDao;
		this.loggerService = loggerService;
	}

	@Override
	public void add(Product product) {
		if (product.getCategoryId() == 1) {
			System.out.println("Bu kategoride urun kabul edilmiyor");
			return;
		}

		this.productDao.add(product);
		this.loggerService.logToSystem("Urun eklnedi: " + product.getName());

	}

	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
