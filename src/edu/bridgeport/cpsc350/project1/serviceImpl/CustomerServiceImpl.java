package edu.bridgeport.cpsc350.project1.serviceImpl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import edu.bridgeport.cpsc350.project1.dao.CustomerMapper;
import edu.bridgeport.cpsc350.project1.model.Customer;
import edu.bridgeport.cpsc350.project1.model.CustomerExample;
import edu.bridgeport.cpsc350.project1.model.CustomerExample.Criteria;
import edu.bridgeport.cpsc350.project1.service.ICustomerService;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@Service
public class CustomerServiceImpl implements ICustomerService {
	@Resource
	private CustomerMapper customerMapper;

	@Override
	public int insertSelective(Customer record) {
		return customerMapper.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(Customer record) {
		return customerMapper.updateByPrimaryKey(record);
	}

	@Override
	public int deleteCustomers(List<Integer> customerids)  {
		for (int custid : customerids) {
			
				customerMapper.deleteByPrimaryKey(custid);
			
		}
		return customerids.size();
	}

	@Override
	public Customer selectByPrimaryKey(Integer custid) {
		return customerMapper.selectByPrimaryKey(custid);
	}

	@Override
	public List<Customer> selectByExample(CustomerExample example) {
		return customerMapper.selectByExample(example);
	}

	@Override
	public Map<String, Object> selectCustomersPage(DataGridModel dgm, Customer customer) {
		Map<String, Object> result = new HashMap<String, Object>();
		CustomerExample example = new CustomerExample();
		Criteria criteria = example.or();
		if (null != customer.getCustid()) {
			criteria.andCustidEqualTo(customer.getCustid());
		}
		if (null != customer.getCustname() && !"".equals(customer.getCustname())) {
			criteria.andCustnameLike("%" + customer.getCustname() + "%");
		}
		if (null != customer.getIdentityid()  && !"".equals(customer.getIdentityid())) {
			criteria.andIdentityidLike("%" + customer.getIdentityid() + "%");
		}
		if (null != customer.getGender() && !"".equals(customer.getGender())) {
			criteria.andGenderEqualTo(customer.getGender());
		}
		PageHelper.orderBy(dgm.getOrder());
		PageHelper.startPage(dgm.getPage(), dgm.getRows());
		List<Customer> list = customerMapper.selectByExample(example);
		List<Customer> l = new ArrayList<>();
		for (Customer cust : list) {
			l.add(cust);
		}
		result.put("total", ((Page) list).getTotal());
		result.put("rows", l);

		return result;
	}

	@Override
	public int addOrUpdate(Customer record) {
		int i = 0;
		if(record.getCustid() == null){
			int custid = (int)Calendar.getInstance().getTimeInMillis();
			custid = custid < 0 ? -custid : custid;
			record.setCustid(custid);
			record.setIdentitype("1");
			record.setCity(121);
			record.setState(12);
			record.setGender("1");
			record.setEducation("3");
			i = customerMapper.insertSelective(record);
		}else{
			i = customerMapper.updateByPrimaryKeySelective(record);
		}
		return i;
	}

}
