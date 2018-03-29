package com.ikbal.admin.adminLoginDTO;

import java.io.Serializable;


public class AdminDTO implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userid;
	private String password;

	public AdminDTO() {
		System.out.println(this.getClass().getSimpleName() + "object created");
	}
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
