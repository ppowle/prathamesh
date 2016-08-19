package com;

import java.util.List;

public interface WishDAO {

	public List<Wish> list(String id);

	public Wish get(String id);

	public void save(Wish wish);

	public void update(Wish wish);

	public void delete(String id);

	public Long getSum(String id);
}
