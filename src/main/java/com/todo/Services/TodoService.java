package com.todo.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.todo.Dao.TodoDao;
import com.todo.Model.Todo;

@Component
public class TodoService {
	@Autowired
	TodoDao todoDao;
	public int saveTodo(Todo todo) {
		return this.todoDao.saveTodo(todo);
	}
	
	public List<Todo> getTodo(String email) {
		return this.todoDao.getTodo(email);
	}
}
