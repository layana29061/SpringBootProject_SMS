package com.sms.repository;

import java.util.List;

import java.util.Optional;



import org.springframework.data.jpa.repository.JpaRepository;


import com.sms.entity.StaffCredentials;

public interface StaffCredentialsRepository extends JpaRepository<StaffCredentials, Integer>  {

	
	void deleteByStaffId(int staffId);
	
	List<StaffCredentials> findAll();
	StaffCredentials findByUsername(String string);
}


