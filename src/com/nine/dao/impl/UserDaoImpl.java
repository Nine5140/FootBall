package com.nine.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.nine.beans.User;
import com.nine.dao.UserDao;

public class UserDaoImpl implements UserDao{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<User> selectUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		System.out.println("执行到我这里");
		Query query = session.createQuery("from User u where u.username =? and u.password =?");
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		query.setString(0, user.getUsername());
		query.setString(1, user.getPassword());
		List<User> list = (List<User>) query.list();
		ts.commit();
		session.close();
		return list;
	}

}
