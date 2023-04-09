package com.bs.services;

import java.util.*;
import javax.persistence.*;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bs.modal.User;
import com.bs.repository.UserRepository;

@Service
@Transactional
public class UserService {
	@Autowired
	private EntityManager entityManager;
	@Autowired
	private UserRepository userRepository;

	public void saveMyUser(User user) {
		userRepository.save(user);
	}

	public List<User> showAllUsers() {
		List<User> users = new ArrayList<User>();
		for (User user : userRepository.findAll()) {
			users.add(user);
		}

		return users;
	}

	public void deleteMyUser(int id) {
		userRepository.delete(id);
	}

	public User editUser(int id) {
		return userRepository.findOne(id);
	}

	// String firstname = this firstname came from jsp form
	//where u.firstname = this firstname came from database
	public List<User> findByFirstnameAndPassword(String firstname, String password) {
		String hql = "from User u where u.firstname='" + firstname + "' and u.password='" + password + "' ";
		Query query = entityManager.createQuery(hql);
		List<User> stud = query.getResultList();
		List<User> s = stud.size() > 0 ? stud : null;
		return s;
	}

}
