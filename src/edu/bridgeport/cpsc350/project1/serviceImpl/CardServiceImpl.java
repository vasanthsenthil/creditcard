package edu.bridgeport.cpsc350.project1.serviceImpl;

import java.text.SimpleDateFormat;
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

import edu.bridgeport.cpsc350.project1.dao.CardMapper;
import edu.bridgeport.cpsc350.project1.model.Card;
import edu.bridgeport.cpsc350.project1.model.CardExample;
import edu.bridgeport.cpsc350.project1.service.ICardService;
import edu.bridgeport.cpsc350.project1.util.CommonUtil;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

@Service
public class CardServiceImpl implements ICardService {

	@Resource
	private CardMapper cardMapper;

	@Override
	public int insertSelective(Card record) {
		record.setCardid(CommonUtil.getIntId());
		record.setCardstatus("1");
		Calendar c = Calendar.getInstance();
		Date today = c.getTime();
		c.add(Calendar.YEAR, 2);
		record.setOpendate(new SimpleDateFormat("yyyyMMdd").format(today));
		record.setExpiredate(new SimpleDateFormat("yyyyMMdd").format(c.getTime()));
		return cardMapper.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(Card record) {
		return cardMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int deleteCards(List<Integer> cards) {
		for (int cardid : cards) {
			cardMapper.deleteByPrimaryKey(cardid);
		}
		return cards.size();
	}

	@Override
	public Card selectByPrimaryKey(Integer cardid) {
		return cardMapper.selectByPrimaryKey(cardid);
	}

	@Override
	public List<Card> selectCardsPage(Map<String, Object> map) {
		PageHelper.startPage(0, 5);
		CardExample example = new CardExample();
		return cardMapper.selectByExample(example);
	}

	@Override
	public int deleteByPrimaryKey(Integer cardid) {
		return cardMapper.deleteByPrimaryKey(cardid);
	}

	@Override
	public Map<String, Object> getCardListPage(DataGridModel dgm, Card card) {
		Map<String, Object> result = new HashMap<String, Object>();
		PageHelper.startPage(dgm.getPage(), dgm.getRows());
		List<Card> list = cardMapper.selectByExample(new CardExample());
		List<Card> l = new ArrayList<>();
		for (Card c : list) {
			l.add(c);
		}
		result.put("total", ((Page) list).getTotal());
		result.put("rows", l);
		return result;
	}

}
