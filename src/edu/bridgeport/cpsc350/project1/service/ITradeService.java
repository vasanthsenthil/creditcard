package edu.bridgeport.cpsc350.project1.service;

import java.util.Map;

import edu.bridgeport.cpsc350.project1.model.Trade;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

public interface ITradeService {
	public Map<String, Object> selectTradePage(DataGridModel dm, Trade trade);
}
