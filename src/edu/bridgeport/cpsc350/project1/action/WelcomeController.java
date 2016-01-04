package edu.bridgeport.cpsc350.project1.action;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/welcome")
public class WelcomeController {
	
	@RequestMapping(method=RequestMethod.POST)
	public String helloWorld(@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password, Model model) {
		if (username.equals("admin") && password.equals("123")) {
			//return "welcome";
			model.addAttribute("user", "admin");
			return "main_admin";

		} else if (username.equals("user") && password.equals("123")) {
			return "main";
		} else {
			model.addAttribute("message", "Incorrect username or password.");
			return "relogin";
		}
	}
}
