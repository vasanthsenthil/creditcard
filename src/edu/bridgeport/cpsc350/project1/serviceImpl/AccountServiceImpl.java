package edu.bridgeport.cpsc350.project1.serviceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import edu.bridgeport.cpsc350.project1.dao.AccountMapper;
import edu.bridgeport.cpsc350.project1.model.Account;
import edu.bridgeport.cpsc350.project1.model.AccountExample;
import edu.bridgeport.cpsc350.project1.model.CardExample.Criteria;
import edu.bridgeport.cpsc350.project1.service.IAccountService;
import edu.bridgeport.cpsc350.project1.util.CommonUtil;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@Service
public class AccountServiceImpl implements IAccountService {
	@Resource
	private AccountMapper accountMapper;

	@Override
	public Account selectByPrimaryKey(Integer accountno) {

		return accountMapper.selectByPrimaryKey(accountno);
	}

	@Override
	public int updateByPrimaryKeySelective(Account record) {

		return accountMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int insertSelective(Account record) {
		record.setAccountstate("1");
		record.setOpendate(CommonUtil.getCurrentDateTime().substring(0, 8));
		return accountMapper.insertSelective(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer accountno) {
		return accountMapper.deleteByPrimaryKey(accountno);
	}

	@Override
	public int deleteAccounts(List<Integer> accountNos) {
		for (int i : accountNos) {
			accountMapper.deleteByPrimaryKey(i);
		}
		return 0;
	}

	@Override
	public List<Account> selectAccountPage(Map<String, Object> map) {
		Account account = (Account) map.get("account");
		// DataGridModel dm = (DataGridModel)map.get("dm");
		PageHelper.startPage(0, 100);
		AccountExample example = new AccountExample();
		if (account.getBalance() != 0) {
			example.or().andBalanceGreaterThan(account.getBalance());
		}
		return accountMapper.selectByExample(example);
	}

	@Override
	public Map<String, Object> selectAccountsPage(DataGridModel dgm, Account account) {
		Map<String, Object> result = new HashMap<String, Object>();
		AccountExample example = new AccountExample();
		edu.bridgeport.cpsc350.project1.model.AccountExample.Criteria criteria = example.or();
		if (null != account.getAccountno()) {
			criteria.andAccountnoEqualTo(account.getAccountno());
		}
		if (null != account.getBankid() && !"".equals(account.getBankid())) {
			criteria.andBankidEqualTo(account.getBankid());
		}
		if (null != account.getCustid() && !"".equals(account.getCustid())) {
			criteria.andCustidEqualTo(account.getCustid());
		}
		if (null != account.getAccountstate() && !"".equals(account.getAccountstate())) {
			criteria.andAccountstateEqualTo(account.getAccountstate());
		}
		if (null != account.getAccounttype() && !"".equals(account.getAccounttype())) {
			criteria.andAccounttypeEqualTo(account.getAccounttype());
		}
		PageHelper.orderBy(dgm.getSort());
		PageHelper.startPage(dgm.getPage(), dgm.getRows());
		List<Account> list = accountMapper.selectByExample(example);
		List<Account> l = new ArrayList<>();
		for (Account acc : list) {
			l.add(acc);
		}
		result.put("total", ((Page) list).getTotal());
		result.put("rows", l);

		return result;

	}
	

	@Override
	public int addOrUpdate(Account account) {
		if(account.getAccountno() == null){
			account.setAccountno(CommonUtil.getIntId());
			this.insertSelective(account);
		}else{
			updateByPrimaryKeySelective(account);
		}
		return 0;
	}
	

}
