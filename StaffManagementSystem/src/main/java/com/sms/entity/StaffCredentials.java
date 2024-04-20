package com.sms.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="staffCredentials")
public class StaffCredentials {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@OneToOne
	@JoinColumn(name = "staffId", referencedColumnName = "staffId")
	private Staff staff;
	
	private String username;
	private String password;
	private String role;

	public StaffCredentials() {

	}
	
	public StaffCredentials( Staff staff, String username, String password, String role) {
		super();
		
		this.setStaff(staff);
		this.username = username;
		this.password = password;
		this.setRole("staff");
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Staff getStaff() {
		return staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "StaffCredentials [id=" + id + ", staff=" + staff + ", username=" + username + ", password=" + password
				+ ", role=" + role + "]";
	}
	
	
	
}
