package com.sms.controller;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sms.entity.Department;
import com.sms.entity.Roles;
import com.sms.entity.Staff;
import com.sms.entity.Subject;
import com.sms.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;

	/// -------------------------------Staff functionality by
	/// admin-----------------------------------------

	/// Displaying staff details

	@RequestMapping("admin")
	public String adminDashboardFromLogin() {
		return "adminDashboard";
	}
	
	
	@RequestMapping("manageStaff")
	public String gotoStaffPage(ModelMap modelMap) {

		ArrayList<Staff> staffList = adminService.findAllStaff();
		modelMap.addAttribute("staffs", staffList);
		return "manageStaff";

	}

	/// Adding staff details
	@RequestMapping(value = "addStaff", method = RequestMethod.GET)
	public String showAddPage(ModelMap model) {
		return "addStaff";
	}

	@RequestMapping(value = "addStaff", method = RequestMethod.POST)
	public String showAddPagePost(@RequestParam String staffName, @RequestParam String staffEmail,
			@RequestParam String staffPhoneNumber, @RequestParam String staffGender, @RequestParam int roleId,
			@RequestParam int departmentId, @RequestParam int subjectId) {
		adminService.addStaff(staffName, staffEmail, staffPhoneNumber, staffGender, roleId, departmentId, subjectId);
		return "redirect:manageStaff";
	}

	/// Delete Staff Details
	@RequestMapping("deleteStaff")
	public String deleteStaff(@RequestParam(name = "id") int id) {
		adminService.deleteStaffByStaffId(id);
		return "redirect:manageStaff";
	}

	/// Update Staff Details
	/// update staff -get method
	@RequestMapping(value = "updateStaff", method = RequestMethod.GET)
	public String updateStaff(@RequestParam(name = "id") int id, ModelMap modelMap) {
		// mapping from service layer to update
		Staff staff = adminService.findStaffDetailById(id);
		modelMap.put("staff", staff);
		return "updateStaff";
	}

	/// update staff -post method
	@RequestMapping(value = "updateStaff", method = RequestMethod.POST)
	public String updateStaffPost(@RequestParam int id, @RequestParam String staffName, @RequestParam String staffEmail,
			@RequestParam String staffPhoneNumber, @RequestParam String staffGender, @RequestParam Roles roles,
			@RequestParam Department departments, @RequestParam Subject subject, ModelMap modelMap) {
		// mapping from service layer to update
		adminService.updateStaff(id, staffName, staffEmail, staffPhoneNumber, staffGender, roles, departments, subject);
		return "redirect:manageStaff";
	}

	/// -------------------------------Department functionality by
	/// admin-----------------------------------------
	@RequestMapping("manageDepartment")
	public String gotoDepartmentPage(ModelMap modelMap) {
		ArrayList<Department> deptList = adminService.findAllDepartment();
		System.out.println("------------------>" + deptList);
		modelMap.addAttribute("department", deptList);
		return "manageDepartment";

	}

	/// add department
	@RequestMapping(value = "addDepartments", method = RequestMethod.GET)
	public String showAddDepartment(ModelMap modelMap) {
		return "addDepartments";
	}

	@RequestMapping(value = "addDepartments", method = RequestMethod.POST)
	public String showAdddepartmentPost(@RequestParam int departmentId, @RequestParam String departmentName) {
		adminService.addDepartment(departmentId, departmentName);
		return "redirect:manageDepartment";
	}

	/// update department
	@RequestMapping(value = "updateDepartment", method = RequestMethod.GET)
	public String updateDepartment(ModelMap modelMap, int departmentId, String departmentName) {
		// update department
		// mapping from service layer to update
		Department department = adminService.findDepartmentDetailById(departmentId, departmentName);
		modelMap.put("department", department);
		return "updateDepartment";
	}

	@RequestMapping(value = "updateDepartment", method = RequestMethod.POST)
	public String updateStaffPost(@RequestParam int departmentId, @RequestParam String departmentName,
			ModelMap modelMap) {
		// update department
		// mapping from service layer to update
		adminService.updateDepartment(departmentId, departmentName);
		return "redirect:manageDepartment";
	}

	/// delete department
	@RequestMapping("deleteDepartment")
	public String deleteDepartment(@RequestParam int departmentId) {
		adminService.deleteDepartmentById(departmentId);
		return "redirect:manageDepartment";
	}
	/// ----------------------------------Subject functionality by
	/// admin--------------------------

	/// display
	@RequestMapping(value = "manageSubject", method = RequestMethod.GET)
	public String gotoSubjectPage(ModelMap modelMap) {
		List<Subject> subjectList = adminService.findAllSubject();
		modelMap.addAttribute("subjects", subjectList);
		System.out.println("------------------------------->" + subjectList);
		return "manageSubject";
	}

	/// add
	@RequestMapping(value = "addSubject", method = RequestMethod.GET)
	public String showAddSubject(ModelMap modelMap) {
		return "addSubject";
	}

	@RequestMapping(value = "addSubject", method = RequestMethod.POST)
	public String showAddSubjectPost(@RequestParam int subjectId, @RequestParam String subjectName) {
		adminService.addSubject(subjectId, subjectName);
		return "redirect:manageSubject";
	}

	/// update
	@RequestMapping(value = "updateSubject", method = RequestMethod.GET)
	public String updateSubject(ModelMap modelMap, int subjectId, String subjectName) {
		Subject subject = adminService.findSubjectDetailById(subjectId, subjectName);
		modelMap.put("subject", subject);
		return "updateSubject";
	}

	@RequestMapping(value = "updateSubject", method = RequestMethod.POST)
	public String updateSubjectPost(@RequestParam int subjectId, @RequestParam String subjectName, ModelMap modelMap) {
		// update department
		// mapping from service layer to update
		adminService.updateSubject(subjectId, subjectName);
		return "redirect:manageSubject";
	}
	/// delete
	/*
	 * @RequestMapping("deleteSubject") public String deleteSubject(@RequestParam
	 * int subjectId) { adminService.deleteSubjecttById(subjectId); return
	 * "redirect:manageSubject"; }
	 */

	/// ----------------------------------Role functionality by
	/// admin--------------------------
	@RequestMapping(value = "sameSubject", method = RequestMethod.GET)
	public List<Staff> getStaffBySubjectId(@RequestParam(value = "subjectId") int subjectId) {
		return adminService.getStaffBySubjectId(subjectId);
	}

	@RequestMapping("manageRole")
	public String gotoRolePage(ModelMap modelMap) {
		List<Roles> roleList = adminService.findAllRole();
		modelMap.addAttribute("role", roleList);
		return "manageRole";

	}

	@RequestMapping(value = "addRole", method = RequestMethod.GET)
	public String showAddRole(ModelMap modelMap) {
		return "addRole";
	}

	@RequestMapping(value = "addRole", method = RequestMethod.POST)
	public String showAddrolePost(@RequestParam int roleId, @RequestParam String staffPosition,
			@RequestParam int staffYearOfExperience, @RequestParam Double salary) {
		adminService.addRole(roleId, staffPosition, staffYearOfExperience, salary);

		return "redirect:manageRole";
	}

	@RequestMapping("deleteRole")
	public String deleteRole(@RequestParam(name = "id") int id) {
		adminService.deleteRoleById(id);
		return "redirect:manageRole";
	}

}