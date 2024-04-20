package com.sms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("sms")
	public String homePage() {
		return "homePage";
	}
	
	@RequestMapping("admin-page")
	public String adminDashboard() {
		return "loginPage";
	}
	
	@RequestMapping("staff-page")
	public String staffDashboard() {
		return "loginPage";
	}
	

}
