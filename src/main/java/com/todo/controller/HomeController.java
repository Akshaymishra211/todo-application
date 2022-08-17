package com.todo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.todo.Model.Todo;
import com.todo.Model.User;
import com.todo.Services.TodoService;
import com.todo.Services.UserService;

@Controller
public class HomeController {
	@Autowired
	UserService services;
	@Autowired
	TodoService todoservices;
	
	@RequestMapping(path="/success",method = RequestMethod.POST)
	public String success(@ModelAttribute User user,@RequestParam(name = "repassword") String repass) {
		User userdata=this.services.getUser(user.getEmail());
		if(user.getEmail().isEmpty() || !user.getPassword().equals(repass) || userdata!=null) {
			return "redirect:/signin";
		}
		//logic to save user to database
		this.services.saveData(user);
		return "success";
	}
	
	@RequestMapping("/showData")
	public ModelAndView loggedIn(@RequestParam(name = "email") String email,@RequestParam(name = "password") String password) {
		ModelAndView modelAndView=new ModelAndView();
		User userdata=this.services.getUser(email);
		if(userdata==null || !userdata.getPassword().equals(password)) {
			modelAndView.setViewName("redirect:/signin");
			return modelAndView;
		}
		List<Todo> todos=this.todoservices.getTodo(email);
		modelAndView.addObject("Name", userdata.getName());
		modelAndView.addObject("todos", todos);
		modelAndView.setViewName("showdata");
		return modelAndView;
	}
	
	@RequestMapping("/saveTodo")
	public String saveUserTodo(@RequestParam(name = "email") String ema,@RequestParam(name = "description") String desc) {
		User user=this.services.getUser(ema);
		if(user==null) {
			return "signinpage";
		}
		Todo todo=new Todo();
		todo.setEmail(ema);
		todo.setTodo(desc);
		todo.setStatus(true);
		this.todoservices.saveTodo(todo);
		return "loginpage";
	}
	
	@RequestMapping("/addNewTodo")
	public String addTodo() {
		return "addTodo";
	}
	
	@RequestMapping("/home")
	public String home() {
		return "loginpage";
	}
	
	@RequestMapping("/signin")
	public String signin() {
		return "signinpage";
	}
	
}