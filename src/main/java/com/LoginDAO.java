package com;

import java.util.List;

public interface LoginDAO {

	public List<Login> list();

	public Login get(String id);

	public void saveOrUpdate(Login login);

	public void delete(String id);

	public boolean validate(String userid, String password);

}
