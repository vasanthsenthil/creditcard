package edu.bridgeport.cpsc350.project1.service;

import java.util.List;
import java.util.Map;

import edu.bridgeport.cpsc350.project1.model.Transaction;
import edu.bridgeport.cpsc350.project1.model.TransactionExample;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

public interface ITransactionService {
	public int insertSelective(Transaction record);
	public int updateSelective(Transaction record);

	public List<Transaction> selectByExample(TransactionExample example);

	public Map<String, Object> selectTransactionPage(DataGridModel dgm, Transaction t);
	
	public int deleteByPrimaryKey(Integer key);
	
}
