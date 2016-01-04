
/*List the bankid, bankname, cardtype and the total number of each type of credit card issued*/
select a.bankid, a.bankname, b.cardtype, count(b.cardtype) as cardNums from bank a
 join (
select  a.accountNo, a.bankid, c.name as cardtype from ACCOUNT a 
join creditcard b on a.accountNo = b.accountNo
join dd_cardtype c on b.cardType = c.code ) b
on a.bankid = b.bankid
group by a.bankid, a.bankname, b.cardtype
order by a.bankid, b.cardtype;
/*expected output*/
/*********************************
1001	Chase Bank of Bridgeport	Visa	1
1002	Chase Bank of New Haven	AMEX	1
1002	Chase Bank of New Haven	Visa	1
1003	Chase Bank of Stamford	AMEX	1
1003	Chase Bank of Stamford	JCB	1
1004	Chase Bank of Waterbury	JCB	1
1004	Chase Bank of Waterbury	Mastercard	1
1005	Chase Bank of Norwalk	Mastercard	1

********************************/


/*List the name of customers who have master degree and had expenditure more than $1,000 one time.*/
select a.custId, a.custName 
from CUSTOMER a
join ACCOUNT b on a.custId = b.custId
join creditcard c on b.accountno = c.accountNo
join (select distinct cardId from traderecord where tradetype = '1' and amount > 1000) d on c.cardId = d.cardId
where a.education = '3';
/*expected output*/
/********************
2	Shantae Encinas
*********************/



/*List the name of customers who are male and had total expenditures more than $5,000.*/
select a.custId, a.custName 
from CUSTOMER a
join ACCOUNT b on a.custId = b.custId
join creditcard c on b.accountno = c.accountNo
join (select distinct cardId from traderecord where tradetype = '1' group by cardId having sum(amount) > 5000) d on c.cardId = d.cardId
where a.gender = '1';
/*expected output*/
/*************************
2	Shantae Encinas
4	Joelle Lasater
**************************/



/*List the total expenditures, average expenditures that credit card was used by male or female and the average expenditures are not zero.*/
select e.name as Gender, sum(amount), avg(amount)
from TRADERECORD a
join CREDITCARD b on a.cardId = b.cardId
join ACCOUNT c on b.accountNO = c.accountNO
join CUSTOMER d on c.custId = d.custId
join dd_gender e on d.gender = e.code
where tadeTime >='20150101000000'--this year
      and tradetype = '1' --- expenditure
having avg(amount) > 0
group by e.name;
/*expected output*/
/*******************************
Male	15900	1590
Female	23200	2320
********************************/



/*List the total expenditures, max expenditures in each type of merchant where the total expenditures are not zero.*/
select c.name as MERCHANTYPE, sum(amount), max(amount) 
from TRADERECORD a 
join merchant b on a.merchantId = b.merchantId
join DD_MERCHTYPE c on b.merchantType = c.code 
where tradetype = '1'
group by c.name
having sum(amount) > 0
order by c.name;
/*expected output*/
/*****************************
Market	12800	7000
Oil	5100	3000
Rental	5600	4000
Restaurant	13600	8000
Ticket	2000	1500
******************************/



