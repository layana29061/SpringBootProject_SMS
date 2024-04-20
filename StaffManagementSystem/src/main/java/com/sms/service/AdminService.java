package com.sms.service;
 
import java.util.ArrayList;

 
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.sms.entity.Department;

import com.sms.entity.Roles;
import com.sms.entity.Staff;
import com.sms.entity.Subject;
import com.sms.repository.DepartmentRepository;
import com.sms.repository.RoleRepository;
import com.sms.repository.StaffCredentialsRepository;
import com.sms.repository.StaffRepository;
import com.sms.repository.SubjectRepository;
 
 
@Service
public class AdminService {
 
	///--------------------------------------------------------------------------------------///
	///-------------------------------------STAFF-------------------------------------------------///

	@Autowired
	StaffRepository staffRepository;
	
	@Autowired
	DepartmentRepository departmentRepository;
	 
	@Autowired
	SubjectRepository subjectRepository;
	
	  @Autowired
	  RoleRepository roleRepository;
	  
	  @Autowired
	    private StaffCredentialsRepository staffCredentialsRepository;
	  
///---------------Display--------------------------
	public ArrayList<Staff> findAllStaff() {
		return staffRepository.findAll();
	}
/*----------------Add-----------------------------*/
	public void addStaff(String staffName, String staffEmail, String staffPhoneNumber, String staffGender, int roleId,
			int departmentId, int subjectId) {
		Roles role = roleRepository.findById(roleId).get();
		
		Department departments = departmentRepository.findById(departmentId).get();
		
		Subject subject = subjectRepository.findById(subjectId).get();
		
		staffRepository
				.save(new Staff(staffName, staffEmail, staffPhoneNumber,staffGender,role,departments,subject));
	}
///------------- Delete---------------------
	public void deleteStaffByStaffId(int staffId) {
		staffCredentialsRepository.deleteByStaffId(staffId);
		staffRepository.deleteById(staffId);
	}
///--------------update----------------------------------
	public Staff findStaffDetailById(int id) {
		Staff staff = staffRepository.findById(id).get();
		return staff;
	}
	public void updateStaff(int staffId, String staffName, String staffEmail, String staffPhoneNumber, String staffGender,
			Roles roles,Department departments, Subject subject) {
		Staff staff = staffRepository.findById(staffId).get();
		staff.setSubject(subject);
		staff.setStaffName(staffName);
		staff.setStaffGender(staffGender);
		staff.setStaffEmail(staffEmail);
		staff.setRoles(roles);
		staff.setStaffPhoneNumber(staffPhoneNumber);
		staff.setDepartment(departments);
		staffRepository.save(staff);
	}
	///--------------------------------------------------------------------------------------///
	///-------------------------------------DEPARTMENT-------------------------------------------------///
	
 
	public void addDepartment(int departmentId, String departmentName) {
		departmentRepository
				.save(new Department(departmentId,departmentName));
	}

	public ArrayList<Department> findAllDepartment() {
		return departmentRepository.findAll();
	}

	public Department findDepartmentDetailById(int departmentId,String departmentName ) {
	   Department departments = departmentRepository.findById(departmentId).get();
		return departments;
	}

	public void updateDepartment(int departmentId, String departmentName) {
		Department department = departmentRepository.findById(departmentId).get();
		department.setDepartmentName(departmentName);
		departmentRepository.save(department);
	}

	public void deleteDepartmentById(int departmentId) {
		departmentRepository.deleteById(departmentId);
	}         
	///--------------------------------------------------------------------------------------///
	///-------------------------------------SUBJECT-------------------------------------------------///


	public List<Subject> findAllSubject() {
		return subjectRepository.findAll();
	}

	public Subject findSubjectDetailById(int subjectId,String subjectName ) {
		Subject subject = subjectRepository.findById(subjectId).get();
		return subject;
	}

	public void updateSubject(int subjectId, String subjectName) {
		Subject subject = subjectRepository.findById(subjectId).get();
		subject.setSubjectName(subjectName);
		subjectRepository.save(subject);
	}

	/*
	 * public void deleteSubjecttById(int subjectId) {
	 * subjectRepository.deleteById(subjectId); }
	 */
	public void addSubject(int subjectId, String subjectName) {
		subjectRepository
				.save(new Subject(subjectId,subjectName));
	}

 
    public List<Staff> getStaffBySubjectId(int subjectId) {
        return staffRepository.findBySubjectSubjectId(subjectId);
    }
    public List<Staff> getStaffByDepartmentId(int departmentId){
    	return staffRepository.findByDepartments_DepartmentId(departmentId);
    }
//	// Staff handling the same subject
//    public List<Staff> findAllStaffBySubjectId(int subjectId) {
//        return staffRepository.findAllBySubjectId(subjectId);
//    }
// 
//    // Staff working in the same department
//    public List<Staff> findAllStaffByDepartmentId(int departmentId) {
//        return staffRepository.findAllByDepartmentId(departmentId);
//    }
    
    
   /// ------------------------------ROLES--------------------------------------------------------
  
	public void addRole(int roleId, String staffPosition, int staffYearOfExperience, Double Salary) {
		roleRepository.save(new Roles(roleId, staffPosition,  staffYearOfExperience, Salary));
	}
 
	public List<Roles> findAllRole() {
		//  Auto-generated method stub
		return roleRepository.findAll();
	}
 
	public Roles findByRoleId(int roleId) {
		//  Auto-generated method stub
		return roleRepository.findById(roleId).get();
	}
	public void updateSalary(int roleId,Double Salary) {
		Roles role = roleRepository.findById(roleId).get();
		role.setSalary(Salary);
		roleRepository.save(role);
	}
	public void deleteRoleById(int roleId) {
		roleRepository.deleteById(roleId);
	}
	
 
	public void updateRole(int roleId, Double Salary) {
	}

}