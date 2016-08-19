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
		List<Login> LoginList = session.createQuery("from Login").list();

		return LoginList;
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
		String hql = "from Login where username= '" + uname + "' and " + " password ='" + password + "'";
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
		String hql = "from Login where username= '" + uname + "' and " + " role ='admin'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Login> list = (List<Login>) query.list();

		if (list != null && !list.isEmpty()) {
			return true;
		}

		return false;
	}

	@Transactional
	public Login get(String id) {
		String hql = "from Login where username= '" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Login> list = (List<Login>) query.list();

		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}

		return null;
	}
}
