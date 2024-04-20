package com.sms.entity;
 
import jakarta.persistence.Entity;
 
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
 
 
@Entity
public class Staff {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int staffId; //->staff_id
	private String staffName;
	private String staffEmail;
	private String staffPhoneNumber;
	private String staffGender;
	
	@ManyToOne
	@JoinColumn(name = "roleId", referencedColumnName = "roleId")
	private Roles roles;
	@ManyToOne
	@JoinColumn(name = "departmentId", referencedColumnName = "departmentId")
	private Department departments;
	@ManyToOne
	@JoinColumn(name = "subjectId", referencedColumnName = "subjectId")
	private Subject subject;
 
				
	public Staff( String staffName, String staffEmail, String staffPhoneNumber, String staffGender,
			Roles roles,Department departments, Subject subject) {
		super();
		this.staffName = staffName;
		this.staffEmail = staffEmail;
		this.staffPhoneNumber = staffPhoneNumber;
		this.staffGender = staffGender;
		this.setRoles(roles);
		this.setDepartment(departments);
		this.setSubject(subject);
	}
	public Staff() {
	}
 
	public int getStaffId() {
		return staffId;
	}
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	public String getStaffName() {
		return staffName;
	}
	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}
	public String getStaffEmail() {
		return staffEmail;
	}
	public void setStaffEmail(String staffEmail) {
		this.staffEmail = staffEmail;
	}
	public String getStaffPhoneNumber() {
		return staffPhoneNumber;
	}
	public void setStaffPhoneNumber(String staffPhoneNumber) {
		this.staffPhoneNumber = staffPhoneNumber;
	}
	public String getStaffGender() {
		return staffGender;
	}
	public void setStaffGender(String staffGender) {
		this.staffGender = staffGender;
	}
	public Roles getRoles() {
		return roles;
	}
	public void setRoles(Roles roles) {
		this.roles = roles;
	}
	public Department getDepartments() {
		return departments;
	}
	public void setDepartment(Department departments) {
		this.departments = departments;
	}
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
 
	
}