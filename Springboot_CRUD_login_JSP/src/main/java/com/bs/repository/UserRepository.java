package com.bs.repository;

import org.springframework.data.repository.CrudRepository;

import com.bs.modal.User;

public interface UserRepository extends CrudRepository<User, Integer> {	
	
	
}
