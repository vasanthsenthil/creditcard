package edu.bridgeport.cpsc350.project1.serviceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import edu.bridgeport.cpsc350.project1.dao.TransactionMapper;
import edu.bridgeport.cpsc350.project1.model.Transaction;
import edu.bridgeport.cpsc350.project1.model.TransactionExample;
import edu.bridgeport.cpsc350.project1.service.ITransactionService;
import edu.bridgeport.cpsc350.project1.util.CommonUtil;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@Service
public class TransactionServiceImpl implements ITransactionService {
	@Resource
	TransactionMapper tMapper;

	@Override
	public int insertSelective(Transaction record) {
		record.setTradeid(CommonUtil.getIntId());
		record.setTadetime(CommonUtil.getCurrentDateTime());
		return tMapper.insertSelective(record);
	}

	@Override
	public List<Transaction> selectByExample(TransactionExample example) {
		return tMapper.selectByExample(example);
	}

	@Override
	public int updateSelective(Transaction record) {

		return tMapper.updateByPrimaryKey(record);
	}

	@Override
	public Map<String, Object> selectTransactionPage(DataGridModel dgm, Transaction t) {
		Map<String, Object> result = new HashMap<String, Object>();
		PageHelper.startPage(dgm.getPage(), dgm.getRows());
		List<Transaction> list = tMapper.selectByExample(new TransactionExample());
		List<Transaction> l = new ArrayList<>();
		for (Transaction c : list) {
			l.add(c);
		}
		result.put("total", ((Page) list).getTotal());
		result.put("rows", l);
		return result;
	}

	@Override
	public int deleteByPrimaryKey(Integer key) {

		return tMapper.deleteByPrimaryKey(key);
	}

}
