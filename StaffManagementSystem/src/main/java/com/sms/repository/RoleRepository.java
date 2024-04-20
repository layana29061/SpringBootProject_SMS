package com.sms.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.sms.entity.Roles;

public interface RoleRepository extends JpaRepository<Roles, Integer> {
	List<Roles> findAll();
}
