package com.sms.service;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.sms.entity.Staff;
import com.sms.entity.StaffCredentials;
import com.sms.repository.StaffCredentialsRepository;
import com.sms.repository.StaffRepository;
 
	
	@Service
	public class StaffService {
 
	    @Autowired
	    private StaffRepository staffRepository;
	    
	    @Autowired
	    private StaffCredentialsRepository staffCredentialsRepository;
	    
	    public Staff getStaffById(int staffId) {
	        return staffRepository.findById(staffId).orElse(null);
	    }
	    
		/*
		 * public StaffCredentials checkCredentials(String username, String password) {
		 * return staffCredentialsRepository.findByUsernameAndPassword(username,
		 * password); }
		 */
	    public void updateEmail(int staffId, String newEmail) {
	        Staff staff = getStaffById(staffId);
	        if (staff != null) {
	            staff.setStaffEmail(newEmail);
	            staffRepository.save(staff);
	        }
	    }
 
	    public void updatePhoneNumber(int staffId, String newPhoneNumber) {
	        Staff staff = getStaffById(staffId);
	        staff.setStaffPhoneNumber(newPhoneNumber);
	        staffRepository.save(staff);
	    }
 
}