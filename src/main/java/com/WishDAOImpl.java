package com;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("wishDAO")
public class WishDAOImpl implements WishDAO {

	@Autowired
	SessionFactory sessionFactory;

	public WishDAOImpl() {
		// TODO Auto-generated constructor stub
	}

	public WishDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Wish> list(String id) {
		String hql = "from Wish where Uid='" + id + "' and Status = 'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Wish> list = (List<Wish>) query.list();
		return list;
	}

	@Transactional
	public void save(Wish wish) {

		sessionFactory.getCurrentSession().save(wish);

	}

	@Transactional
	public void update(Wish wish) {

		sessionFactory.getCurrentSession().update(wish);

	}

	@Transactional
	public void delete(String id) {
		Wish WishToDelete = new Wish();
		WishToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(WishToDelete);
	}

	@Transactional
	public Wish get(String id) {
		String hql = "from Wish where Uid= '" + id + "' and Status = 'N'";

		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Wish> list = (List<Wish>) query.list();

		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}

		return null;
	}

	@Transactional
	public Long getSum(String id) {
		String hql = "select sum(Pprice) from Wish where Uid=" + "'" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		Long sum = (Long) query.uniqueResult();

		return sum;
	}

}
