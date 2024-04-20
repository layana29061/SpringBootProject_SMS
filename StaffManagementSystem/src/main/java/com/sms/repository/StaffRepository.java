package com.sms.repository;
 
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
 
import com.sms.entity.Staff;
 
public interface StaffRepository extends JpaRepository<Staff, Integer> {
	List<Staff> findBySubjectSubjectId(int subjectId);
	List<Staff> findByDepartments_DepartmentId(int departmentId);
	ArrayList<Staff> findAll();
	void deleteById(int staffId);
}