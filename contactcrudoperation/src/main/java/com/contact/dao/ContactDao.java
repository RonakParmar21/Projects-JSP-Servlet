package com.contact.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.contact.entities.Contact;
import com.contact.helper.ConnectionManager;

public class ContactDao {
	private Connection connection;
	
	public ContactDao(Connection connection) {
		this.connection = connection;
	}
	
	public boolean addContact(Contact contact) {
		boolean result = false;
		
		try {
			
			String query = "INSERT INTO contact(name, email, mobile, msg) VALUES(?,?,?,?)";
			
			PreparedStatement pst = this.connection.prepareStatement(query);
			
			pst.setString(1, contact.getName());
			pst.setString(2, contact.getEmail());
			pst.setLong(3, contact.getMobile());
			pst.setString(4, contact.getMsg());
			
			int i = pst.executeUpdate();
			
			if(i != 0) {
				result = true;
			}
			
		} catch(Exception e) {
			System.out.println("add contact exception is : " + e);
		}
		
		return result;
	}
	
	public boolean deleteContact(Contact contact) {
		boolean deleteResult = false;
		
		try {
			
			String query = "DELETE FROM contact WHERE id = ?";
			
			PreparedStatement pst = this.connection.prepareStatement(query);
			pst.setInt(1, contact.getId());
			
			int i = pst.executeUpdate();
			
			if(i != 0) {
				deleteResult = true;
			}
			
		} catch(Exception e) {
		System.out.println("delete contact exception is : " + e);
		}
		
		return deleteResult;
	}
	
	public boolean updateContact(Contact contact) {
		boolean updateResult = false;
		
		try {
			String query = "UPDATE contact SET name=?, email=?, mobile=?, msg=? WHERE id=?";
			
			PreparedStatement pst = this.connection.prepareStatement(query);
			pst.setString(1, contact.getName());
			pst.setString(2, contact.getEmail());
			pst.setLong(3, contact.getMobile());
			pst.setString(4, contact.getMsg());
			pst.setInt(5, contact.getId());
			
			int i = pst.executeUpdate();
			if(i != 0) {
				updateResult = true;
			}
			
		} catch(Exception e) {
			System.out.println("update contact exeception is : " + e);
		}
		
		return updateResult;
	}
}
