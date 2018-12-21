package com.nine.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.nine.beans.Goalsituation;
import com.nine.dao.GoalsituationDao;

public class GoalsituationDaoImpl implements GoalsituationDao {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean insertGoalsituation(Goalsituation goalsituation) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		session.save(goalsituation);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public List<Goalsituation> selectGoalsituationAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Goalsituation");
		List<Goalsituation> list = (List<Goalsituation>) query.list();
		session.close();
		return list;
	}

	@Override
	public Goalsituation selectityGoalsituation(Integer id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		// Transaction ts = session.beginTransaction();
		Query query = session.createQuery("from Goalsituation cd where cd.id =?");
		query.setInteger(0, id);
		if (query.list().isEmpty()) {
			// ts.commit();
			session.close();
			return new Goalsituation();
		} else {
			Goalsituation goalsituation = (Goalsituation) query.list().get(0);
			// ts.commit();
			session.close();
			return goalsituation;
		}
	}

	@Override
	public boolean updateGoalsituation(Goalsituation goalsituation) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		session.update(goalsituation);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public boolean deleteGoalsituation(Integer id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		// Query query = session.createQuery("from Team cd where cd.id =?");
		List list = session.createQuery("from Goalsituation cd where cd.id =?").setInteger(0, id).list();
		// query.setInteger(0, id);
		// System.out.println(query);
		Goalsituation goalsituation = (Goalsituation) list.get(0);
		Transaction ts = session.beginTransaction();
		session.delete(goalsituation);
		ts.commit();
		session.close();
		return true;
	}

}
