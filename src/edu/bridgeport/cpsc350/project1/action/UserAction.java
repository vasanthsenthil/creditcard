package edu.bridgeport.cpsc350.project1.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.bridgeport.cpsc350.project1.model.User;
import edu.bridgeport.cpsc350.project1.service.IUserService;

@Controller
@RequestMapping(value = "/user")
public class UserAction {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(HttpSession session, Model model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password, Model model) {

		// SysUser user =
		// this.sysUserService.loadUserByUsernameAndPassword(username,
		// password);
		// Map<String, Object> map = new HashMap<String, Object>();
		if (username.equals("admin") && password.equals("123")) {
			// map.put("success", true);
			// map.put("flag", "1");
			return "main_admin";

		} else if (username.equals("user") && password.equals("123")) {
			// map.put("success", true);
			// map.put("flag", "1");
			return "main";
		} else {
			// map.put("success", false);
			// map.put("errorMsg", "Incorrect username or password.");
			model.addAttribute("message", "Incorrect username or password.");
			return "relogin";
		}
		// String str=JSONObject.toJSONString(map);
		// response.getWriter().write(str);
		// return map;

	}

	@Resource
	private IUserService userService;

	@RequestMapping("/showUser")
	public String toIndex(HttpServletRequest request, Model model) {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "showUser";
	}
}
