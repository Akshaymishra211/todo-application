package com.todo.Dao;




import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.todo.Model.Todo;

@Component
public class TodoDao {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveTodo(Todo todo) {
		return (Integer)this.hibernateTemplate.save(todo);
	}
	
	public List<Todo> getTodo(String email) {
		List<Todo> list=this.hibernateTemplate.loadAll(Todo.class);
		List<Todo> res=new ArrayList<Todo>();
		for(Todo todo:list) {
			if(todo.getEmail().equals(email)) {
				res.add(todo);
			}
		}
		return res;
	}
}
