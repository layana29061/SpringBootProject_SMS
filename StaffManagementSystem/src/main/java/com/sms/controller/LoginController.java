package com.sms.controller;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.sms.entity.StaffCredentials;
import com.sms.service.LoginService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@GetMapping("/login")
	public String login() {
		return "loginPage";
	}
	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public String login(@RequestParam String username,@RequestParam String password,HttpServletRequest request ,ModelMap modelMap ) {
		
		if(loginService.checkUsernamePassword(username,password)) {
			StaffCredentials staffCredentials = loginService.fetchUserDetailFromDataBase(username);
			HttpSession session = request.getSession();
			session.setAttribute("username", staffCredentials.getUsername());

			if ("admin".equalsIgnoreCase(staffCredentials.getRole())) {	
				return "redirect:/adminDashboard";
			} else if ("staff".equalsIgnoreCase(staffCredentials.getRole())) {
				session.setAttribute("currentStaff", staffCredentials.getStaff().getStaffId());
				return "redirect:/staffDashboard";
			} else {
				return "redirect:/login"; // Redirect back to login page if role is not valid
			}
		}else {
			modelMap.put("error", "Either Username Or Password does not Exist");
			return "login"; // Redirect back to login page if role is not valid
		}

		
	}
	

	/*
	 * @PostMapping("/login") public String doLogin(@RequestParam("username") String
	 * username, @RequestParam("password") String password, Model model) {
	 * 
	 * StaffCredentials staffCredentials = loginService.checkCredentials(username,
	 * password);
	 * 
	 * if (staffCredentials != null) { System.out.
	 * println("-----------------------StaffCredentials in LoginController: " +
	 * staffCredentials); model.addAttribute("staff", staffCredentials.getStaff());
	 * return "staffDashboard"; } else { System.out.
	 * println("No StaffCredentials found in LoginController for username: " +
	 * username); model.addAttribute("error", "Invalid username or password");
	 * return "loginPage"; } }
	 * 
	 * 
	 * @RequestMapping(value = "/login", method = RequestMethod.POST) public String
	 * login(
	 * 
	 * @RequestParam(name = "username", required = true) String username,
	 * 
	 * @RequestParam(name = "password", required = true) String password, Model
	 * model) { StaffCredentials staffCredentials =
	 * loginService.checkCredentials(username, password);
	 * 
	 * System.out.println(username+"-----------------"+password); if
	 * (staffCredentials != null) {
	 * System.out.println("============================================");
	 * System.out.println(username+"-----------------"+password);
	 * model.addAttribute("staff", staffCredentials); return "staffDashboard_login";
	 * } else { model.addAttribute("error", "Invalid username or password"); return
	 * "loginPage"; } }
	 * 
	 */
	/*
	 * @RequestMapping("admin") public String adminDashboardFromLogin() { return
	 * "adminDashboard"; }
	 * 
	 * @RequestMapping("staff") public String staffDashboardFromLogin() { return
	 * "staffDashboard"; }
	 */
}
