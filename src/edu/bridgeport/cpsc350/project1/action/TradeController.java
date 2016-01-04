package edu.bridgeport.cpsc350.project1.action;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.bridgeport.cpsc350.project1.model.Trade;
import edu.bridgeport.cpsc350.project1.service.ITradeService;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@Controller
@RequestMapping(value ="/trade")
public class TradeController {
	@Resource
	private ITradeService service;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list() throws Exception {
		return "trade/list";
	}
	
	@RequestMapping(value = "/queryList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> selectTradePage(DataGridModel dgm, Trade trade){
		return service.selectTradePage(dgm, trade);
	}
}
