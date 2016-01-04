package edu.bridgeport.cpsc350.project1.service;

import java.util.List;
import java.util.Map;

import edu.bridgeport.cpsc350.project1.model.Card;
import edu.bridgeport.cpsc350.project1.util.DataGridModel;

public interface ICardService {
	public int insertSelective(Card record);

	public int updateByPrimaryKeySelective(Card record);

	public int deleteCards(List<Integer> cards);

	public int deleteByPrimaryKey(Integer cardid);

	public Card selectByPrimaryKey(Integer cardid);

	public List<Card> selectCardsPage(Map<String, Object> map);

	public Map<String, Object> getCardListPage(DataGridModel dgm, Card card);
}
