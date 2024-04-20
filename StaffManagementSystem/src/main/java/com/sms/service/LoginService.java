package com.sms.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;



import com.sms.entity.StaffCredentials;
import com.sms.repository.StaffCredentialsRepository;

@Service
public class LoginService {
	
	@Autowired
	private StaffCredentialsRepository staffCredentialsRepository;

	public StaffCredentials fetchUserDetailFromDataBase(String username) {
		StaffCredentials staffCredentials = staffCredentialsRepository.findByUsername(username);
		return staffCredentials;
	}
	public boolean checkUsernamePassword(String username, String password) {
		StaffCredentials staffCredentials= staffCredentialsRepository.findByUsername(username);
		System.out.println(staffCredentials);
		if(staffCredentials==null) {
			return false;
		}
		else {
			if(staffCredentials.getPassword().equals(password))
				return true;
			else
				return false;
		}
	}
}
