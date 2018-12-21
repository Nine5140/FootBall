package com.nine.dao;

import java.util.List;

import com.nine.beans.User;

public interface UserDao {

	List selectUser(User user);

}
