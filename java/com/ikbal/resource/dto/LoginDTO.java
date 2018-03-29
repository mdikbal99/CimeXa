package com.ikbal.resource.dto;

import java.io.Serializable;



public class LoginDTO implements Serializable
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5L;
	private int id;
	private String user_name;
	private String password;
	
	public LoginDTO() 
	{
	System.out.println(this.getClass().getSimpleName()+"Created...");	
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getUser_name() {
		return user_name;
	}
	
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "LoginDTO [id=" + id + ", user_name=" + user_name + ", password=" + password + "]";
	}

}
