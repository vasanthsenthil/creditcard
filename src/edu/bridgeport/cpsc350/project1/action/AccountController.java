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

import edu.bridgeport.cpsc350.project1.model.Account;
import edu.bridgeport.cpsc350.project1.service.IAccountService;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@Controller
@RequestMapping(value = "/account")
public class AccountController {

	@Resource
	private IAccountService service;

	@RequestMapping(value = "/listAccount", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		return "account/listAccount1";
	}

	@RequestMapping(value = "/queryList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> queryList(DataGridModel dgm, Account account) throws Exception {
		return service.selectAccountsPage(dgm, account);

	}
	
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> add(Account account) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			service.insertSelective(account);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("mes", "error!");
		}
		return map; 
	}
	
	@RequestMapping(value="/addOrUpdate",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> addOrUpdate(Account account) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			service.addOrUpdate(account);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("errorMsg", "error!");
		}
		return map; 
	}
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> delete(@RequestParam String id){
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			service.deleteByPrimaryKey(Integer.parseInt(id));
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("errorMsg", "error!");
		}
		return map;
	}


}
