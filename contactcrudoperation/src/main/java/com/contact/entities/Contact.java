package com.contact.entities;

public class Contact {
	
	private int id;
	private String name;
	private String email;
	private long mobile;
	private String msg;
	
	public Contact(String name, String email, long mobile, String msg) {
		super();
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.msg = msg;
	}
	
	public Contact(int id) {
		super();
		this.id = id;
	}
	
	public Contact(int id, String name, String email, long mobile, String msg) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.msg = msg;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public long getMobile() {
		return mobile;
	}
	
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	
	public String getMsg() {
		return msg;
	}
	
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
