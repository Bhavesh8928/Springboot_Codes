package com.bs.controller;

import java.time.LocalDateTime;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import com.bs.modal.User;
import com.bs.services.UserService;

@Controller
public class MainController {

	@Autowired
	private UserService userService;

	@ResponseBody
	@GetMapping("/")
	public String hello() {
		return "This is Home page";
	}

	@RequestMapping("/home")
	public String home() {
		return "Home";
	}

	@RequestMapping("/register")
	public String registration() 
	{		
		return "signup";
	}

	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("Send data to jsp using ModelAndView");
		ModelAndView mv = new ModelAndView();
		mv.addObject("name", "Salman");
		LocalDateTime date = LocalDateTime.now();
		mv.addObject("time", date); // on jsp page use ${time} = it will show date
		mv.setViewName("help"); // help is the jsp page name
		return mv;
	}

	@PostMapping("/saveuser")
	public String saveUser(@ModelAttribute("sesUsers") User user, @RequestParam String username, Model model) {
		userService.saveMyUser(user);
		model.addAttribute("sesname", username);
		return "usersaved";
	}

	@GetMapping("/showusers")
	public String showAllUsers(Model model) {
		model.addAttribute("users", userService.showAllUsers());
		return "usersPage";
	}

	@RequestMapping("/deletejspuser")
	public String deleteUser(@RequestParam int id, HttpServletRequest request) {
		userService.deleteMyUser(id);
		request.setAttribute("users", userService.showAllUsers());
		return "usersPage";
	}

	@RequestMapping("/editjspuser")
	public String editUser(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("user", userService.editUser(id));
		return "updateform";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@GetMapping("/loginStudent")
	public String loginStudent(@ModelAttribute User userLog, HttpServletRequest request) {
		if (userService.findByFirstnameAndPassword(userLog.getFirstname(), userLog.getPassword()) != null) {
			System.out.println("Login successful");
			return "loginsuccess";
		} else {
			request.setAttribute("error", "Invalid username and password");
			System.out.println("Login Fail");
			return "login";
		}
	}

}
