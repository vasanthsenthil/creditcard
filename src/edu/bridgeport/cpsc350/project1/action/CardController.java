package edu.bridgeport.cpsc350.project1.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.bridgeport.cpsc350.project1.model.Card;
import edu.bridgeport.cpsc350.project1.service.ICardService;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@Controller
@RequestMapping(value = "/card")
public class CardController {
	@Resource
	private ICardService cardService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(){
		return "card/listCards";
	}
	
	@RequestMapping(value ="/newCard", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> add(Card card){
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			cardService.insertSelective(card);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("errorMsg", "Some errors occured.");
		}
		return map; 
	}
	
	@RequestMapping(value = "/listCards", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getCardListPage(DataGridModel dgm, Card card) {
		return cardService.getCardListPage(dgm, card);
	}
	
	
	
	@RequestMapping(value="/updateCard",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> updateCard(@RequestParam String id, Card card) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			card.setCardid(Integer.parseInt(id));
			cardService.updateByPrimaryKeySelective(card);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("errorMsg", "Some errors occured.");
		}
		return map; 
	}
	@RequestMapping(value="/deleteCard",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> delete(@RequestParam String id){
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			cardService.deleteByPrimaryKey(Integer.parseInt(id));
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("errorMsg", "Some errors occured.");
		}
		return map;
	}

	

}
