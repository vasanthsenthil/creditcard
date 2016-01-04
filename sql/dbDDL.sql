CREATE TABLE DD_IDENTITYTYPE(
code char(1) not null,
name varchar2(20) not null,
constraint DD_IDENTITYTYPE_PK primary key (code)
);
CREATE TABLE DD_GENDER(
code char(1) not null,
name varchar2(10) not null,
constraint DD_GENDER_PK primary key (code)
);
CREATE TABLE DD_EDU(
code char(1) not null,
name varchar2(20) not null,
constraint DD_EDU_PK primary key (code)
);

CREATE TABLE DD_STATUS(
code char(1) not null,
name varchar2(10) not null,
constraint DD_STATUS_PK primary key (code)
);
CREATE TABLE DD_CARDTYPE(
code char(1) not null,
name varchar2(10) not null,
constraint DD_CARDTYPE_PK primary key (code)
);
CREATE TABLE DD_MERCHTYPE(
code char(2) not null,
name varchar2(10) not null,
constraint DD_MERCHTYPE_PK primary key (code)
);

CREATE TABLE DD_TRDTYPE(
code char(1) not null,
name varchar2(10) not null,
constraint DD_TRDTYPE_PK primary key (code)
);
CREATE TABLE DD_ACCOUNTTYPE(
code char(1) not null,
name varchar2(10) not null,
constraint DD_ACCOUNTTYPE_PK primary key (code)
);

create table BANK(
bankId int not null,
bankName varchar2(50) null,
blevel int  null,
pbankId int null,
constraint BANK_PK primary key (bankId),
constraint bank_fk foreign key (pbankId) references BANK(bankId)
);
CREATE TABLE STATE(
stateId int not null,
stateName varchar2(20) not null,
abbr varchar2(10) not null,
constraint STATE_PK primary key (stateId)
);

CREATE TABLE CITY(
cityId int not null,
cityName varchar2(20) not null,
state int not null,
constraint CITY_PK primary key (cityId),
constraint CITY_FK foreign key (state) references  STATE(stateId)
);

create table CUSTOMER(
custId int not null,
custName varchar2(50) null,
identitype char(1) null,
identityId varchar2(20) not null,
birthday char(8) null,
street varchar2(100) null,
city int null,
state int null,
gender char(1) not null,
education char(1) null,
constraint CUSTOMER_PK primary key (custId)
);

create table ACCOUNT(
accountNo int not null,
openDate varchar(8) null,
accountType char(1) null,
accountState char(1) null,
balance float(5) null,
custId int not null,
bankId int not null,
constraint ACCOUNT_PK primary key (accountNo),
constraint ACCOUNT_fk_CUST foreign key (custId) references CUSTOMER(custId),
constraint ACCOUNT_fk_BANK foreign key (bankId) references BANK(bankId)
);




create table CREDITCARD(
cardId int not null,
cardNo varchar2(16) not null,
openDate char(8) not null,
expireDate char(8) null,
cvv char(3) null,
password char(6) null,
cardType char(1) not null,
cardStatus char(1) null,
accountNO int not null,
constraint CREDITCARD_PK primary key(cardId),
constraint CREDITCARD_FK_ACCOUNT foreign key(accountNo) references ACCOUNT(accountNO)
);

create table BILL(
billId int not null,
billDate char(8) not null,
payment float(5) null,
accountNO int not null,
constraint BILL_PK primary key(billId),
constraint BILL_FK_ACCOUNT FOREIGN KEY (accountNO) references ACCOUNT(accountNO)
);

create table MERCHANT(
merchantId int not null,
merchantName varchar2(50) null,
merchantType char(2) null,
constraint MERCHANT_PK primary key(merchantId)
);

create table TRADERECORD(
tradeId int not null,
tadeTime char(14) not null,
amount float(5) not null,
cardId int not null,
merchantId int null,
tradetype char(1) not null,
constraint TRADERECORD_PK primary key(tradeId),
constraint TRADERECORD_FK_CARD FOREIGN KEY(cardId) references CREDITCARD(cardId),
constraint TRADERECORD_FK_MERCHANT FOREIGN KEY(merchantId) references MERCHANT(merchantId)
);

commit;