package com;

import java.util.List;

public interface ProductDAO {

	public List<Product> list();

	public List<Product> categorylist(String id);

	public Product get(String id);

	public void save(Product product);

	public void update(Product product);

	public void delete(String id);

	public void saveOrUpdate(Product product);

	public List<Product> search(String search);

	public List<Product> search1(String search, String type, String owner, String price);
}
