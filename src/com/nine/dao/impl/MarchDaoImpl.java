package com.nine.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.nine.beans.March;
import com.nine.beans.Team;
import com.nine.dao.MarchDao;

public class MarchDaoImpl implements MarchDao {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean insertMarch(March march) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		session.save(march);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public List<March> selectMarchAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from March");
		List<March> list = (List<March>) query.list();
		session.close();
		return list;
	}

	@Override
	public March selectityMarch(Integer id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		// Transaction ts = session.beginTransaction();
		Query query = session.createQuery("from March cd where cd.id =?");
		query.setInteger(0, id);
		if (query.list().isEmpty()) {
			// ts.commit();
			session.close();
			return new March();
		} else {
			March march = (March) query.list().get(0);
			// ts.commit();
			session.close();
			return march;
		}
	}

	@Override
	public boolean updateMarch(March march) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		session.update(march);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public boolean deleteMarch(Integer id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		//Query query = session.createQuery("from Team cd where cd.id =?");
		List list=session.createQuery("from March cd where cd.id =?").setInteger(0, id).list();
		//query.setInteger(0, id);
		//System.out.println(query);
		March march=(March) list.get(0);
		Transaction ts = session.beginTransaction();
		session.delete(march);
		ts.commit();
		session.close();
		return true;
	}

}
