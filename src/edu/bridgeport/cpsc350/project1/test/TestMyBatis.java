package edu.bridgeport.cpsc350.project1.test;

import static org.junit.Assert.assertEquals;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import edu.bridgeport.cpsc350.project1.model.Account;
import edu.bridgeport.cpsc350.project1.model.Customer;
import edu.bridgeport.cpsc350.project1.service.IAccountService;
import edu.bridgeport.cpsc350.project1.service.ICustomerService;
import edu.bridgeport.cpsc350.project1.service.IUserService;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@RunWith(SpringJUnit4ClassRunner.class) // 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:application.xml" })

public class TestMyBatis {
	private static Logger logger = Logger.getLogger(TestMyBatis.class);
	private ApplicationContext ac = null;
	@Resource
	private IUserService userService;
	@Resource
	private IAccountService accountService;
	@Resource ICustomerService customerService;

	@Before
	public void before() {
		ac = new ClassPathXmlApplicationContext("application.xml");
		//userService = (IUserService) ac.getBean("userService");
		
	}
/*
	@Test
	public void test1() {
		User user = userService.getUserById(1);
		 System.out.println(user.getUserName());
		 logger.info("值："+user.getUserName());
		logger.info(JSON.toJSONString(user));
	}	
	@Test
	public void testPaging(){
		UserExample example = new UserExample();
		example.setOrderByClause("id desc");
		List l = userService.getPageList(example);
		PageInfo page = new PageInfo(l);
		assertEquals(10, page.getTotal());
		assertEquals(5, page.getEndRow());
		System.out.println(((User)l.get(0)).getId());
		System.out.println(((User)l.get(1)).getId());
	}
	
	@Test
	public void testAccount(){
		Account acc = new Account();
		acc.setAccountno(1001);
		
		Account account = accountService.selectByPrimaryKey(acc.getAccountno());
		assertEquals(1001, account.getBankid().intValue());
		System.out.println(account.getBalance());
		Map<String, Object> map = new HashMap<String, Object>();
		acc.setBalance(500.0);
		map.put("account", acc);
		map.put("dm", null);
		List<?> l = accountService.selectAccountPage(map);
		assertEquals(10, l.size());
	}*/
	@Test
	public void testCustomer(){
		DataGridModel dgm = new DataGridModel();
		dgm.setPage(1);
		dgm.setRows(10);
		Customer customer = new Customer();
		customer.setCustid(1);
		customer.setIdentityid("1");
		customer.setGender("1");
		Map map = customerService.selectCustomersPage(dgm, customer);
		System.out.println("==============");
		System.out.println(map.get("total"));
		System.out.println(((Customer)((List)map.get("rows")).get(0)).getCustname());
		System.out.println("==============");
	}
}
