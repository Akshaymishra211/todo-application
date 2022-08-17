package com.todo.Dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.todo.Model.User;

@Component
public class UserDao {
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public String saveUser(User user) {
		return (String) this.hibernateTemplate.save(user);
	}
	
	public User getUser(String email) {
		return (User)this.hibernateTemplate.get(User.class, email);
	}
}