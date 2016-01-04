package edu.bridgeport.cpsc350.project1.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.bridgeport.cpsc350.project1.model.Transaction;
import edu.bridgeport.cpsc350.project1.service.ITransactionService;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@Controller
@RequestMapping(value = "/transaction")
public class TransactionController {
	@Resource
	private ITransactionService service;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list() {
		return "transaction/list";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insert(Transaction t) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			service.insertSelective(t);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("errorMsg", "Some errors occured.");
		}
		return map;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> update(Transaction t) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			service.updateSelective(t);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("errorMsg", "Some errors occured.");
		}
		return map;
	}
	
	@RequestMapping(value = "/queryList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getTransactionListPage(DataGridModel dgm, Transaction t) {
		return service.selectTransactionPage(dgm, t);
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> delete(@RequestParam String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			service.deleteByPrimaryKey(Integer.parseInt(id));
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("errorMsg", "Some errors occured.");
		}
		return map;
	}

}
