package yan.com.yankart_backend.dao;

import java.util.List;

import yan.com.yankart_backend.dto.Product;

public interface ProductDAO {

	Product get(int productId);
	List<Product> list();	
	boolean add(Product product);
	boolean update(Product product);
	boolean delete(Product product);

	List<Product> getProductsByParam(String param, int count);	
	
	// CORE methods
		List<Product> listActiveProducts();	
		List<Product> listActiveProductsByCategory(int categoryId);
		List<Product> getLatestActiveProducts(int count);

	
}
