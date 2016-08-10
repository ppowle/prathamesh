package com;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("loginDAO")
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	SessionFactory sessionFactory;

	public LoginDAOImpl() {
		// TODO Auto-generated constructor stub
	}

	public LoginDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Login> list() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Login> ProductList = session.createQuery("from Login").list();
		session.close();
		return ProductList;
	}

	@Transactional
	public void saveOrUpdate(Login login) {

		sessionFactory.getCurrentSession().save(login);

	}

	@Transactional
	public void delete(String id) {
		Login LoginToDelete = new Login();
		LoginToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(LoginToDelete);
	}

	@Transactional
	public boolean validate(String uname, String password) {
		String hql = "from Login where uname= '" + uname + "' and " + " password ='" + password + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Login> list = (List<Login>) query.list();

		if (list != null && !list.isEmpty()) {
			return true;
		}

		return false;
	}

	@Transactional
	public boolean validateuser(String uname, String password) {
		String hql = "from Login where uname= '" + uname + "' and " + " admin ='1'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Login> list = (List<Login>) query.list();

		if (list != null && !list.isEmpty()) {
			return true;
		}

		return false;
	}

	public com.Login get(String id) {
		// TODO Auto-generated method stub
		return null;
	}
}
