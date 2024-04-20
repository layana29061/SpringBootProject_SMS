package com.sms.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sms.entity.Department;

public interface DepartmentRepository extends JpaRepository<Department, Integer> {
	
	ArrayList<Department> findAll();

	List<Department> findByDepartmentId(int departmentId);
}
