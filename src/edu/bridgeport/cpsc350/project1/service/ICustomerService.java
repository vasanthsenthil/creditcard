package edu.bridgeport.cpsc350.project1.service;

import java.util.List;
import java.util.Map;

import edu.bridgeport.cpsc350.project1.model.Customer;
import edu.bridgeport.cpsc350.project1.model.CustomerExample;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

public interface ICustomerService {
	public int addOrUpdate(Customer record) throws Exception;
	public int insertSelective(Customer record) throws Exception;

	public int updateByPrimaryKeySelective(Customer record);

	public int deleteCustomers(List<Integer> customerids);

	public Customer selectByPrimaryKey(Integer custid);

	public List<Customer> selectByExample(CustomerExample example);

	public Map<String, Object> selectCustomersPage(DataGridModel dgm, Customer customer);
	
}
