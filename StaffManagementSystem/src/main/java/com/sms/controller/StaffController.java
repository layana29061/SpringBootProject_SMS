package com.sms.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sms.service.StaffService;

@Controller
public class StaffController {
	
	@Autowired
    private StaffService staffService;

	@RequestMapping("/")
	public String gotoHomePage() {
		return "homePage";
	}

	/*
	 * @RequestMapping(value = "/viewAssignedSubjects", method = RequestMethod.GET)
	 * public List<String> viewAssignedSubjects(
	 * 
	 * @RequestParam(name = "staffId", required = true) int staffId) { return
	 * staffService.getAssignedSubjects(staffId); }
	 * 
	 * @RequestMapping(value = "/view-assigned-departments", method =
	 * RequestMethod.GET) public List<String> viewAssignedDepartments(
	 * 
	 * @RequestParam(name = "staffId", required = true) int staffId) { return
	 * staffService.getAssignedDepartments(staffId); }
	 */

    @RequestMapping(value = "/update-email", method = RequestMethod.POST)
    public void updateEmail(
            @RequestParam(name = "staffId", required = true) int staffId,
            @RequestParam(name = "newEmail", required = true) String newEmail) {
        staffService.updateEmail(staffId, newEmail);
    }

    @RequestMapping(value = "/update-phone-number", method = RequestMethod.POST)
    public void updatePhoneNumber(
            @RequestParam(name = "staffId", required = true) int staffId,
            @RequestParam(name = "newPhoneNumber", required = true) String newPhoneNumber) {
        staffService.updatePhoneNumber(staffId, newPhoneNumber);
    }

	/*
	 * @RequestMapping(value = "/exit", method = RequestMethod.POST) public void
	 * exit(
	 * 
	 * @RequestParam(name = "staffId", required = true) int staffId) {
	 * staffService.exit(staffId); }
	 */
}
