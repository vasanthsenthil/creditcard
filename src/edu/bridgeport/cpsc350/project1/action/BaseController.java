package edu.bridgeport.cpsc350.project1.action;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/baseController")
public class BaseController {


	@RequestMapping("/{folder}/{jspName}")
	public String redirectJsp(@PathVariable String folder, @PathVariable String jspName) {
		return "/" + folder + "/" + jspName;
	}


	@RequestMapping("/{jspName}")
	public String redirectOnlyJsp( @PathVariable String jspName) {
		return  jspName;
	}

}
