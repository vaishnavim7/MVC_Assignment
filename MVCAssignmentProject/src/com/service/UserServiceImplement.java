package com.service;

import com.dao.UserDao;
import com.dao.UserDaoImplement;
import com.dto.User;

public class UserServiceImplement implements UserService{

	private UserDao userDao;
	
	public UserServiceImplement() {
		userDao = new UserDaoImplement();
	}

	@Override
	public int regiserUser(User user) {
		return userDao.insertUser(user);
	}

	@Override
	public boolean login(User user) {
		return userDao.login(user);
	}

}
