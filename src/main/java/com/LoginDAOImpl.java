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

	private static final Object Login = null;
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
	public Login get(String id) {
		String hql = "from Login where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Login> listLogin = (List<Login>) query.list();

		if (listLogin != null && !listLogin.isEmpty()) {
			return listLogin.get(0);
		}

		return null;
	}

	public boolean validate1(String uname, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	@Transactional
	public boolean saveOrUpdate1(Login login) {

		String id = login.getId();

		String hql = "from Login where userid= '" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Login> list = (List<Login>) query.list();

		if (list.isEmpty()) {

			sessionFactory.getCurrentSession().saveOrUpdate(Login);
			return true;

		} else {

			return false;
		}

	}

	public boolean validate(String userid, String password) {
		// TODO Auto-generated method stub
		return false;
	}
}
