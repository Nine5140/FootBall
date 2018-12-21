package com.nine.service.impl;

import java.util.List;

import com.nine.beans.User;
import com.nine.dao.UserDao;
import com.nine.service.UserService;

public class UserServiceImpl implements UserService{
	
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	@Override
	public User selectUser(User user) {
		List list = userDao.selectUser(user);
		if (list.isEmpty()) {
			return user;
		} else {
			User user1 = (User) list.get(0);
			return user1;
		}
	}

}
