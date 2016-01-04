package edu.bridgeport.cpsc350.project1.service;

import java.util.List;
import java.util.Map;

import edu.bridgeport.cpsc350.project1.model.Account;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

public interface IAccountService {
	public List<Account> selectAccountPage(Map<String, Object> map);

	public Account selectByPrimaryKey(Integer accountno);

	public int updateByPrimaryKeySelective(Account record);
	
	public int insertSelective(Account record);
	
	public int deleteByPrimaryKey(Integer accountno);
	
	public int deleteAccounts(List<Integer> accountNos);

	public Map<String, Object> selectAccountsPage(DataGridModel dm, Account account);

	public int addOrUpdate(Account account);
}
