package com.nine.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.nine.beans.User;
import com.nine.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements ModelDriven<User>{
	private User user= new User();
	private UserService userService;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public String login() {
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		User user1 = userService.selectUser(user);
//		System.out.println(user1);
		if (user.equals(user1)) {
			return "error";
		} else {
			user = user1;
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("user", user);
			return "success";
		}
	}
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
}
