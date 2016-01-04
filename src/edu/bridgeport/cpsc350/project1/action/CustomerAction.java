package edu.bridgeport.cpsc350.project1.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.bridgeport.cpsc350.project1.model.Customer;
import edu.bridgeport.cpsc350.project1.service.ICustomerService;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@Controller
@RequestMapping(value = "/customer")
public class CustomerAction {
	@Resource
	private ICustomerService service;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		return "customer/list";
	}

	@RequestMapping(value = "/queryList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> queryList(DataGridModel dgm, Customer customer) throws Exception {
		return service.selectCustomersPage(dgm, customer);

	}
	
	@RequestMapping(value="/popWindow",method=RequestMethod.GET)
	public String popWindow() throws Exception{
		return "customer/popWindow";
	}
	@RequestMapping(value="/addOrUpdate",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> addOrUpdate(Customer customer) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			service.addOrUpdate(customer);
			map.put("mes", "success!");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("mes", "error!");
		}
		return map; 
	}
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(@RequestParam("custid") List<Integer> custids){
		Map<String, String> map = new HashMap<String, String>();
		try {
			service.deleteCustomers(custids);
			map.put("mes", "success!");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("mes", "error!");
		}
		return map;
	}

}
