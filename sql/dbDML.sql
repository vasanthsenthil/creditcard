INSERT INTO DD_IDENTITYTYPE (code, name) VALUES ('1', 'Driver_License');
INSERT INTO DD_IDENTITYTYPE (code, name) VALUES ('2', 'Student_ID');
INSERT INTO DD_IDENTITYTYPE (code, name) VALUES ('3', 'Military_ID');
INSERT INTO DD_IDENTITYTYPE (code, name) VALUES ('4', 'AAA_ID');
INSERT INTO DD_IDENTITYTYPE (code, name) VALUES ('5', 'SSN');
INSERT INTO DD_IDENTITYTYPE (code, name) VALUES ('6', 'Other');

INSERT INTO DD_GENDER (code, name) VALUES ('1', 'Male');
INSERT INTO DD_GENDER (code, name) VALUES ('2', 'Female');
INSERT INTO DD_GENDER (code, name) VALUES ('3', 'Other');

INSERT INTO DD_EDU (code, name) VALUES ('1', 'High_S');
INSERT INTO DD_EDU (code, name) VALUES ('2', 'Undergraduate');
INSERT INTO DD_EDU (code, name) VALUES ('3', 'Graduate');
INSERT INTO DD_EDU (code, name) VALUES ('4', 'PHD');
INSERT INTO DD_EDU (code, name) VALUES ('5', 'Professor');
INSERT INTO DD_EDU (code, name) VALUES ('6', 'Other');

INSERT INTO DD_STATUS (code, name) VALUES ('1', 'Normal');
INSERT INTO DD_STATUS (code, name) VALUES ('2', 'Limited');
INSERT INTO DD_STATUS (code, name) VALUES ('3', 'Frozen');
INSERT INTO DD_STATUS (code, name) VALUES ('4', 'Cancelled');
INSERT INTO DD_STATUS (code, name) VALUES ('5', 'Other');

INSERT INTO DD_CARDTYPE (code, name) VALUES ('1', 'Visa');
INSERT INTO DD_CARDTYPE (code, name) VALUES ('2', 'Mastercard');
INSERT INTO DD_CARDTYPE (code, name) VALUES ('3', 'AMEX');
INSERT INTO DD_CARDTYPE (code, name) VALUES ('4', 'Discover');
INSERT INTO DD_CARDTYPE (code, name) VALUES ('5', 'JCB');
INSERT INTO DD_CARDTYPE (code, name) VALUES ('6', 'UnionPay');
INSERT INTO DD_CARDTYPE (code, name) VALUES ('7', 'Other');

INSERT INTO DD_MERCHTYPE (code, name) VALUES ('01', 'Restaurant');
INSERT INTO DD_MERCHTYPE (code, name) VALUES ('02', 'Bar');
INSERT INTO DD_MERCHTYPE (code, name) VALUES ('03', 'Market');
INSERT INTO DD_MERCHTYPE (code, name) VALUES ('04', 'Oil');
INSERT INTO DD_MERCHTYPE (code, name) VALUES ('05', 'Rental');
INSERT INTO DD_MERCHTYPE (code, name) VALUES ('06', 'Ticket');
INSERT INTO DD_MERCHTYPE (code, name) VALUES ('07', 'Other');

INSERT INTO DD_TRDTYPE (code, name) VALUES (1, 'Purchase');
INSERT INTO DD_TRDTYPE (code, name) VALUES (2, 'Withdraw');
INSERT INTO DD_TRDTYPE (code, name) VALUES (3, 'Deposit');
INSERT INTO DD_TRDTYPE (code, name) VALUES (4, 'Refund');
INSERT INTO DD_TRDTYPE (code, name) VALUES (5, 'Transfer');
INSERT INTO DD_TRDTYPE (code, name) VALUES (6, 'Other');

INSERT INTO DD_ACCOUNTTYPE (code, name) VALUES ('1', 'Checking');
INSERT INTO DD_ACCOUNTTYPE (code, name) VALUES ('2', 'Saving');
INSERT INTO DD_ACCOUNTTYPE (code, name) VALUES ('3', 'Credit');
INSERT INTO DD_ACCOUNTTYPE (code, name) VALUES ('4', 'Loan');
INSERT INTO DD_ACCOUNTTYPE (code, name) VALUES ('5', 'Other');

INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (0, 'Chase Bank',0, NULL);
INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (1000, 'Chase Bank of Connecticut',1, 0);
INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (1001, 'Chase Bank of Bridgeport',2, 1000);
INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (1002, 'Chase Bank of New Haven',2, 1000);
INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (1003, 'Chase Bank of Stamford',2, 1000);
INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (1004, 'Chase Bank of Waterbury',2, 1000);
INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (1005, 'Chase Bank of Norwalk',2, 1000);
INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (1006, 'Chase Bank of Danbury',2, 1000);
INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (1007, 'Chase Bank of New Britain',2, 1000);
INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (1008, 'Chase Bank of Greenwich',2, 1000);
INSERT INTO BANK (bankId, bankName, blevel, pbankId) VALUES (1009, 'Chase Bank of Bristol',2, 1000);

INSERT INTO STATE (stateId, stateName, abbr) VALUES (11, 'New York','NY');
INSERT INTO STATE (stateId, stateName, abbr) VALUES (12, 'Connecticut','CT');
INSERT INTO STATE (stateId, stateName, abbr) VALUES (13, 'Massachusetts','MA');
INSERT INTO STATE (stateId, stateName, abbr) VALUES (14, 'New Jersey','NJ');
INSERT INTO STATE (stateId, stateName, abbr) VALUES (15, 'Kansas','KS');

INSERT INTO CITY (cityId, cityName, state) VALUES (111, 'Manhattan', 11);
INSERT INTO CITY (cityId, cityName, state) VALUES (112, 'Queens', 11);
INSERT INTO CITY (cityId, cityName, state) VALUES (113, 'Long Island', 11);
INSERT INTO CITY (cityId, cityName, state) VALUES (121, 'Bridgeport', 12);
INSERT INTO CITY (cityId, cityName, state) VALUES (122, 'Milford', 12);
INSERT INTO CITY (cityId, cityName, state) VALUES (123, 'New Heaven', 12);
INSERT INTO CITY (cityId, cityName, state) VALUES (131, 'Boston', 13);
INSERT INTO CITY (cityId, cityName, state) VALUES (141, 'Jersey City', 14);

INSERT INTO CUSTOMER (custId, custName, identitype, identityId, birthday, street, city, state, gender, education) VALUES (1, 'Marc Brugger', 1, '0001', '19000101', 'Park Ave', 111, 11, '1', '1');
INSERT INTO CUSTOMER (custId, custName, identitype, identityId, birthday, street, city, state, gender, education) VALUES (2, 'Shantae Encinas', 1, '0002', '19000101', 'Park Ave', 121, 12, '1', '3');
INSERT INTO CUSTOMER (custId, custName, identitype, identityId, birthday, street, city, state, gender, education) VALUES (3, 'Letty Koerber', 1, '0003', '19000101', 'Park Ave', 141, 14, '2', '2');
INSERT INTO CUSTOMER (custId, custName, identitype, identityId, birthday, street, city, state, gender, education) VALUES (4, 'Joelle Lasater', 1, '0004', '19000101', 'Broadway', 111, 11, '1', '4');
INSERT INTO CUSTOMER (custId, custName, identitype, identityId, birthday, street, city, state, gender, education) VALUES (5, 'Wallace Bigley', 1, '0005', '19000101', 'Broadway', 122, 12, '1', '3');
INSERT INTO CUSTOMER (custId, custName, identitype, identityId, birthday, street, city, state, gender, education) VALUES (6, 'Clifford Hora', 1, '0006', '19000101', 'Broadway', 141, 14, '2', '5');

INSERT INTO ACCOUNT (accountNo, openDate, accountType, accountState, balance, custId, bankId) VALUES (1001, '20000101','1', '1', 1100, 1, 1001);
INSERT INTO ACCOUNT (accountNo, openDate, accountType, accountState, balance, custId, bankId) VALUES (1002, '20000102','3', '1', 1200, 2, 1002);
INSERT INTO ACCOUNT (accountNo, openDate, accountType, accountState, balance, custId, bankId) VALUES (1003, '20000103','3', '1', 1300, 3, 1003);
INSERT INTO ACCOUNT (accountNo, openDate, accountType, accountState, balance, custId, bankId) VALUES (1004, '20000104','3', '1', 1400, 4, 1004);
INSERT INTO ACCOUNT (accountNo, openDate, accountType, accountState, balance, custId, bankId) VALUES (1005, '20000105','3', '1', 1500, 3, 1005);
INSERT INTO ACCOUNT (accountNo, openDate, accountType, accountState, balance, custId, bankId) VALUES (1006, '20000106','3', '1', 1600, 1, 1001);
INSERT INTO ACCOUNT (accountNo, openDate, accountType, accountState, balance, custId, bankId) VALUES (1007, '20000107','3', '3', 1700, 1, 1002);
INSERT INTO ACCOUNT (accountNo, openDate, accountType, accountState, balance, custId, bankId) VALUES (1008, '20000108','3', '1', 1800, 2, 1003);
INSERT INTO ACCOUNT (accountNo, openDate, accountType, accountState, balance, custId, bankId) VALUES (1009, '20000109','3', '1', 1900, 6, 1004);
INSERT INTO ACCOUNT (accountNo, openDate, accountType, accountState, balance, custId, bankId) VALUES (1010, '20000110','3', '1', 11000, 2, 1005);

INSERT INTO CREDITCARD (cardId, cardNo, openDate, expireDate, cvv, password, cardType, cardStatus, accountNO) VALUES (10001, '000001','20150102', '21010102', '001', '100000', '1', '1', 1002);
INSERT INTO CREDITCARD (cardId, cardNo, openDate, expireDate, cvv, password, cardType, cardStatus, accountNO) VALUES (10002, '000002','20150103', '21010103', '002', '200000', '3', '1', 1003);
INSERT INTO CREDITCARD (cardId, cardNo, openDate, expireDate, cvv, password, cardType, cardStatus, accountNO) VALUES (10003, '000003','20150104', '21010104', '003', '300000', '5', '1', 1004);
INSERT INTO CREDITCARD (cardId, cardNo, openDate, expireDate, cvv, password, cardType, cardStatus, accountNO) VALUES (10004, '000004','20150105', '21010105', '004', '400000', '2', '1', 1005);
INSERT INTO CREDITCARD (cardId, cardNo, openDate, expireDate, cvv, password, cardType, cardStatus, accountNO) VALUES (10005, '000001','20150102', '21010102', '001', '100000', '1', '1', 1006);
INSERT INTO CREDITCARD (cardId, cardNo, openDate, expireDate, cvv, password, cardType, cardStatus, accountNO) VALUES (10006, '000002','20150103', '21010103', '002', '200000', '3', '1', 1007);
INSERT INTO CREDITCARD (cardId, cardNo, openDate, expireDate, cvv, password, cardType, cardStatus, accountNO) VALUES (10007, '000003','20150104', '21010104', '003', '300000', '5', '1', 1008);
INSERT INTO CREDITCARD (cardId, cardNo, openDate, expireDate, cvv, password, cardType, cardStatus, accountNO) VALUES (10008, '000004','20150105', '21010105', '004', '400000', '2', '1', 1009);

INSERT INTO BILL (billId, billDate, payment, accountNO) VALUES (100001, '20100202', 400, 1002);
INSERT INTO BILL (billId, billDate, payment, accountNO) VALUES (100002, '20100203', 600, 1003);
INSERT INTO BILL (billId, billDate, payment, accountNO) VALUES (100003, '20100204', 800, 1004);
INSERT INTO BILL (billId, billDate, payment, accountNO) VALUES (100004, '20100205', 1000, 1005);
INSERT INTO BILL (billId, billDate, payment, accountNO) VALUES (100005, '20100202', 400, 1006);
INSERT INTO BILL (billId, billDate, payment, accountNO) VALUES (100006, '20100203', 600, 1007);
INSERT INTO BILL (billId, billDate, payment, accountNO) VALUES (100007, '20100204', 800, 1008);
INSERT INTO BILL (billId, billDate, payment, accountNO) VALUES (100008, '20100205', 1000, 1009);

INSERT INTO MERCHANT (merchantId, merchantName, merchantType) VALUES (100001, 'Mcdonalds', '01');
INSERT INTO MERCHANT (merchantId, merchantName, merchantType) VALUES (100002, 'Walmart', '03');
INSERT INTO MERCHANT (merchantId, merchantName, merchantType) VALUES (100003, 'Mobil', '04');
INSERT INTO MERCHANT (merchantId, merchantName, merchantType) VALUES (100004, 'Hertz', '05');
INSERT INTO MERCHANT (merchantId, merchantName, merchantType) VALUES (100005, 'Delta', '06');
INSERT INTO MERCHANT (merchantId, merchantName, merchantType) VALUES (100006, 'KFC', '01');
INSERT INTO MERCHANT (merchantId, merchantName, merchantType) VALUES (100007, 'Best Buy', '03');
INSERT INTO MERCHANT (merchantId, merchantName, merchantType) VALUES (100008, 'Pilot', '04');
INSERT INTO MERCHANT (merchantId, merchantName, merchantType) VALUES (100009, 'Target', '05');
INSERT INTO MERCHANT (merchantId, merchantName, merchantType) VALUES (100010, 'United', '06');

INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10001, '20150203040506', 100, 10001, 100002, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10002, '20150203040506', 200, 10002, 100001, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10003, '20150203040506', 300, 10002, 100003, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10004, '20150203040506', 400, 10003, 100004, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10005, '20150207040506', 500, 10001, 100005, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10006, '20150208040506', 600, 10004, 100004, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10007, '20150209040506', 700, 10002, 100002, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10008, '20150210040506', 800, 10004, 100001, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10009, '20150211040506', 900, 10001, 100003, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10010, '20150212040506', 1000, 10003, 100001, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10011, '20150203050506', 5000, 10001, 100002, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10012, '20150206040506', 2000, 10002, 100001, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10013, '20150207040506', 3000, 10002, 100003, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10014, '20150208040506', 4000, 10003, 100004, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10015, '20150209040506', 1500, 10001, 100005, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10016, '20150204040506', 600, 10004, 100004, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10017, '20150203040506', 7000, 10002, 100002, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10018, '20150217040506', 8000, 10004, 100001, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10019, '20150212040506', 900, 10001, 100003, 1);
INSERT INTO TRADERECORD (tradeId, tadeTime, amount, cardId, merchantId, tradetype) VALUES (10020, '20150219040506', 1560, 10003, 100001, 1);

commit;