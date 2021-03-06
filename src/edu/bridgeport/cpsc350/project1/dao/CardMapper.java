package edu.bridgeport.cpsc350.project1.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import edu.bridgeport.cpsc350.project1.model.Card;
import edu.bridgeport.cpsc350.project1.model.CardExample;

public interface CardMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    int countByExample(CardExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    int deleteByExample(CardExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    int deleteByPrimaryKey(Integer cardid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    int insert(Card record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    int insertSelective(Card record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    List<Card> selectByExample(CardExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    Card selectByPrimaryKey(Integer cardid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    int updateByExampleSelective(@Param("record") Card record, @Param("example") CardExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    int updateByExample(@Param("record") Card record, @Param("example") CardExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    int updateByPrimaryKeySelective(Card record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table CREDITCARD
     *
     * @mbggenerated Sat Oct 31 22:10:08 EDT 2015
     */
    int updateByPrimaryKey(Card record);
}