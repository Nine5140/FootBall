package com.nine.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.nine.beans.Player;
import com.nine.dao.PlayerDao;

public class PlayerDaoImpl implements PlayerDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean insertPlayer(Player player) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		session.save(player);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public List<Player> selectPlayerAll() {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Player p join p.team");
		List<Object[]> list = (List<Object[]>) query.list();
		List<Player> result = new ArrayList<Player>();
		for (Object[] objects : list) {
			result.add((Player)objects[0]);
		}
		session.close();
		return result;
	}

	@Override
	public boolean deletePlayer(int player_id) {
		// TODO Auto-generated method stub
				Session session = sessionFactory.openSession();
				//Query query = session.createQuery("from Team cd where cd.id =?");
				List list=session.createQuery("from Player p where p.player_id =?").setInteger(0, player_id).list();
				//query.setInteger(0, id);
				//System.out.println(query);
				Player player=(Player) list.get(0);
				Transaction ts = session.beginTransaction();
				session.delete(player);
				ts.commit();
				session.close();
				return true;
	}

	@Override
	public Player selectPlayer(int player_id) {
		// TODO Auto-generated method stub
				Session session = sessionFactory.openSession();
				// Transaction ts = session.beginTransaction();
				Query query = session.createQuery("from Player p join fetch p.team where p.id =?");
				query.setInteger(0, player_id);
				if (query.list().isEmpty()) {
					// ts.commit();
					session.close();
					return new Player();
				} else {
					Player player = (Player) query.list().get(0);
					// ts.commit();
					session.close();
					return player;
				}
	}

	@Override
	public boolean updatePlayer(Player player) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		session.update(player);
		ts.commit();
		session.close();
		return true;
	}


}
