package com.nine.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.nine.beans.Team;
import com.nine.dao.TeamDao;



public class TeamDaoImpl implements TeamDao{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean insertTeam(Team team) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		session.save(team);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public List<Team> findAllTeam() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Team");
		List<Team> list = (List<Team>) query.list();
		session.close();
		return list;
	}
	@Override
	public Team selectityTeam(Integer id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		// Transaction ts = session.beginTransaction();
		Query query = session.createQuery("from Team cd where cd.id =?");
		query.setInteger(0, id);
		if (query.list().isEmpty()) {
			// ts.commit();
			session.close();
			return new Team();
		} else {
			Team team = (Team) query.list().get(0);
			// ts.commit();
			session.close();
			return team;
		}
	}

	@Override
	public boolean updateTeam(Team team ) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		session.update(team);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public boolean deleteTeam(Integer id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		//Query query = session.createQuery("from Team cd where cd.id =?");
		List list=session.createQuery("from Team cd where cd.id =?").setInteger(0, id).list();
		//query.setInteger(0, id);
		//System.out.println(query);
		Team team=(Team) list.get(0);
		Transaction ts = session.beginTransaction();
		session.delete(team);
		ts.commit();
		session.close();
		return true;
	}
}
