package edu.bridgeport.cpsc350.project1.serviceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import edu.bridgeport.cpsc350.project1.dao.TradeMapper;
import edu.bridgeport.cpsc350.project1.model.Trade;
import edu.bridgeport.cpsc350.project1.model.TradeExample;
import edu.bridgeport.cpsc350.project1.model.TradeExample.Criteria;
import edu.bridgeport.cpsc350.project1.service.ITradeService;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@Service
public class TradeServiceImpl implements ITradeService {
	@Resource
	private TradeMapper tradeMapper;

	@Override
	public Map<String, Object> selectTradePage(DataGridModel dgm, Trade trade) {
		Map<String, Object> result = new HashMap<String, Object>();
		TradeExample example = new TradeExample();
		Criteria criteria = example.or();
		if (null != trade.getCustid()) {
			criteria.andCustidEqualTo(trade.getCustid());
		}
		if (null != trade.getCustname() && !"".equals(trade.getCustname())) {
			criteria.andCustnameLike("%" + trade.getCustname() + "%");
		}
		if (null != trade.getIdentityid() && !"".equals(trade.getIdentityid())) {
			criteria.andIdentityidLike("%" + trade.getIdentityid() + "%");
		}
		if (null != trade.getState() && !"".equals(trade.getState())) {
			criteria.andStateEqualTo(trade.getState());
		}
		if (null != trade.getCity() && !"".equals(trade.getCity())) {
			criteria.andCityEqualTo(trade.getCity());
		}
		if (null != trade.getGender() && !"".equals(trade.getGender())) {
			criteria.andGenderEqualTo(trade.getGender());
		}
		if (null != trade.getEducation() && !"".equals(trade.getEducation())) {
			criteria.andEducationEqualTo(trade.getEducation());
		}
		if (null != trade.getCardtype() && !"".equals(trade.getCardtype())) {
			criteria.andCardtypeEqualTo(trade.getCardtype());
		}
		if (null != trade.getCardno() && !"".equals(trade.getCardno())) {
			criteria.andCardnoLike("%" + trade.getCardno() + "%");
		}
		if (null != trade.getTradetype() && !"".equals(trade.getTradetype())) {
			criteria.andTradetypeEqualTo(trade.getTradetype());
		}
		if (null != trade.getMerchanttype() && !"".equals(trade.getMerchanttype())) {
			criteria.andMerchanttypeEqualTo(trade.getMerchanttype());
		}
		if (null != trade.getMerchantid() && !"".equals(trade.getMerchantid())) {
			criteria.andMerchantidEqualTo(trade.getMerchantid());
		}
		PageHelper.orderBy(dgm.getSort());
		PageHelper.startPage(dgm.getPage(), dgm.getRows());
		List<Trade> list = tradeMapper.selectByExample(example);
		List<Trade> l = new ArrayList<>();
		for (Trade trd : list) {
			l.add(trd);
		}
		result.put("total", ((Page) list).getTotal());
		result.put("rows", l);

		return result;
	}
}
