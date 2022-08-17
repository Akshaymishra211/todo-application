package com.todo.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.todo.Dao.UserDao;
import com.todo.Model.User;

@Component
public class UserService {
	@Autowired
	UserDao dao;
	public String saveData(User user) {
		return this.dao.saveUser(user);
	}
	public User getUser(String email) {
		return this.dao.getUser(email);
	}
}