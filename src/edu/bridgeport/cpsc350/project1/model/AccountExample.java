package edu.bridgeport.cpsc350.project1.model;

import java.util.ArrayList;
import java.util.List;

public class AccountExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public AccountExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andAccountnoIsNull() {
            addCriterion("ACCOUNTNO is null");
            return (Criteria) this;
        }

        public Criteria andAccountnoIsNotNull() {
            addCriterion("ACCOUNTNO is not null");
            return (Criteria) this;
        }

        public Criteria andAccountnoEqualTo(Integer value) {
            addCriterion("ACCOUNTNO =", value, "accountno");
            return (Criteria) this;
        }

        public Criteria andAccountnoNotEqualTo(Integer value) {
            addCriterion("ACCOUNTNO <>", value, "accountno");
            return (Criteria) this;
        }

        public Criteria andAccountnoGreaterThan(Integer value) {
            addCriterion("ACCOUNTNO >", value, "accountno");
            return (Criteria) this;
        }

        public Criteria andAccountnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("ACCOUNTNO >=", value, "accountno");
            return (Criteria) this;
        }

        public Criteria andAccountnoLessThan(Integer value) {
            addCriterion("ACCOUNTNO <", value, "accountno");
            return (Criteria) this;
        }

        public Criteria andAccountnoLessThanOrEqualTo(Integer value) {
            addCriterion("ACCOUNTNO <=", value, "accountno");
            return (Criteria) this;
        }

        public Criteria andAccountnoIn(List<Integer> values) {
            addCriterion("ACCOUNTNO in", values, "accountno");
            return (Criteria) this;
        }

        public Criteria andAccountnoNotIn(List<Integer> values) {
            addCriterion("ACCOUNTNO not in", values, "accountno");
            return (Criteria) this;
        }

        public Criteria andAccountnoBetween(Integer value1, Integer value2) {
            addCriterion("ACCOUNTNO between", value1, value2, "accountno");
            return (Criteria) this;
        }

        public Criteria andAccountnoNotBetween(Integer value1, Integer value2) {
            addCriterion("ACCOUNTNO not between", value1, value2, "accountno");
            return (Criteria) this;
        }

        public Criteria andOpendateIsNull() {
            addCriterion("OPENDATE is null");
            return (Criteria) this;
        }

        public Criteria andOpendateIsNotNull() {
            addCriterion("OPENDATE is not null");
            return (Criteria) this;
        }

        public Criteria andOpendateEqualTo(String value) {
            addCriterion("OPENDATE =", value, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateNotEqualTo(String value) {
            addCriterion("OPENDATE <>", value, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateGreaterThan(String value) {
            addCriterion("OPENDATE >", value, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateGreaterThanOrEqualTo(String value) {
            addCriterion("OPENDATE >=", value, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateLessThan(String value) {
            addCriterion("OPENDATE <", value, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateLessThanOrEqualTo(String value) {
            addCriterion("OPENDATE <=", value, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateLike(String value) {
            addCriterion("OPENDATE like", value, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateNotLike(String value) {
            addCriterion("OPENDATE not like", value, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateIn(List<String> values) {
            addCriterion("OPENDATE in", values, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateNotIn(List<String> values) {
            addCriterion("OPENDATE not in", values, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateBetween(String value1, String value2) {
            addCriterion("OPENDATE between", value1, value2, "opendate");
            return (Criteria) this;
        }

        public Criteria andOpendateNotBetween(String value1, String value2) {
            addCriterion("OPENDATE not between", value1, value2, "opendate");
            return (Criteria) this;
        }

        public Criteria andAccounttypeIsNull() {
            addCriterion("ACCOUNTTYPE is null");
            return (Criteria) this;
        }

        public Criteria andAccounttypeIsNotNull() {
            addCriterion("ACCOUNTTYPE is not null");
            return (Criteria) this;
        }

        public Criteria andAccounttypeEqualTo(String value) {
            addCriterion("ACCOUNTTYPE =", value, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeNotEqualTo(String value) {
            addCriterion("ACCOUNTTYPE <>", value, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeGreaterThan(String value) {
            addCriterion("ACCOUNTTYPE >", value, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeGreaterThanOrEqualTo(String value) {
            addCriterion("ACCOUNTTYPE >=", value, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeLessThan(String value) {
            addCriterion("ACCOUNTTYPE <", value, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeLessThanOrEqualTo(String value) {
            addCriterion("ACCOUNTTYPE <=", value, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeLike(String value) {
            addCriterion("ACCOUNTTYPE like", value, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeNotLike(String value) {
            addCriterion("ACCOUNTTYPE not like", value, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeIn(List<String> values) {
            addCriterion("ACCOUNTTYPE in", values, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeNotIn(List<String> values) {
            addCriterion("ACCOUNTTYPE not in", values, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeBetween(String value1, String value2) {
            addCriterion("ACCOUNTTYPE between", value1, value2, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccounttypeNotBetween(String value1, String value2) {
            addCriterion("ACCOUNTTYPE not between", value1, value2, "accounttype");
            return (Criteria) this;
        }

        public Criteria andAccountstateIsNull() {
            addCriterion("ACCOUNTSTATE is null");
            return (Criteria) this;
        }

        public Criteria andAccountstateIsNotNull() {
            addCriterion("ACCOUNTSTATE is not null");
            return (Criteria) this;
        }

        public Criteria andAccountstateEqualTo(String value) {
            addCriterion("ACCOUNTSTATE =", value, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateNotEqualTo(String value) {
            addCriterion("ACCOUNTSTATE <>", value, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateGreaterThan(String value) {
            addCriterion("ACCOUNTSTATE >", value, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateGreaterThanOrEqualTo(String value) {
            addCriterion("ACCOUNTSTATE >=", value, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateLessThan(String value) {
            addCriterion("ACCOUNTSTATE <", value, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateLessThanOrEqualTo(String value) {
            addCriterion("ACCOUNTSTATE <=", value, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateLike(String value) {
            addCriterion("ACCOUNTSTATE like", value, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateNotLike(String value) {
            addCriterion("ACCOUNTSTATE not like", value, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateIn(List<String> values) {
            addCriterion("ACCOUNTSTATE in", values, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateNotIn(List<String> values) {
            addCriterion("ACCOUNTSTATE not in", values, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateBetween(String value1, String value2) {
            addCriterion("ACCOUNTSTATE between", value1, value2, "accountstate");
            return (Criteria) this;
        }

        public Criteria andAccountstateNotBetween(String value1, String value2) {
            addCriterion("ACCOUNTSTATE not between", value1, value2, "accountstate");
            return (Criteria) this;
        }

        public Criteria andBalanceIsNull() {
            addCriterion("BALANCE is null");
            return (Criteria) this;
        }

        public Criteria andBalanceIsNotNull() {
            addCriterion("BALANCE is not null");
            return (Criteria) this;
        }

        public Criteria andBalanceEqualTo(Double value) {
            addCriterion("BALANCE =", value, "balance");
            return (Criteria) this;
        }

        public Criteria andBalanceNotEqualTo(Double value) {
            addCriterion("BALANCE <>", value, "balance");
            return (Criteria) this;
        }

        public Criteria andBalanceGreaterThan(Double value) {
            addCriterion("BALANCE >", value, "balance");
            return (Criteria) this;
        }

        public Criteria andBalanceGreaterThanOrEqualTo(Double value) {
            addCriterion("BALANCE >=", value, "balance");
            return (Criteria) this;
        }

        public Criteria andBalanceLessThan(Double value) {
            addCriterion("BALANCE <", value, "balance");
            return (Criteria) this;
        }

        public Criteria andBalanceLessThanOrEqualTo(Double value) {
            addCriterion("BALANCE <=", value, "balance");
            return (Criteria) this;
        }

        public Criteria andBalanceIn(List<Double> values) {
            addCriterion("BALANCE in", values, "balance");
            return (Criteria) this;
        }

        public Criteria andBalanceNotIn(List<Double> values) {
            addCriterion("BALANCE not in", values, "balance");
            return (Criteria) this;
        }

        public Criteria andBalanceBetween(Double value1, Double value2) {
            addCriterion("BALANCE between", value1, value2, "balance");
            return (Criteria) this;
        }

        public Criteria andBalanceNotBetween(Double value1, Double value2) {
            addCriterion("BALANCE not between", value1, value2, "balance");
            return (Criteria) this;
        }

        public Criteria andCustidIsNull() {
            addCriterion("CUSTID is null");
            return (Criteria) this;
        }

        public Criteria andCustidIsNotNull() {
            addCriterion("CUSTID is not null");
            return (Criteria) this;
        }

        public Criteria andCustidEqualTo(Integer value) {
            addCriterion("CUSTID =", value, "custid");
            return (Criteria) this;
        }

        public Criteria andCustidNotEqualTo(Integer value) {
            addCriterion("CUSTID <>", value, "custid");
            return (Criteria) this;
        }

        public Criteria andCustidGreaterThan(Integer value) {
            addCriterion("CUSTID >", value, "custid");
            return (Criteria) this;
        }

        public Criteria andCustidGreaterThanOrEqualTo(Integer value) {
            addCriterion("CUSTID >=", value, "custid");
            return (Criteria) this;
        }

        public Criteria andCustidLessThan(Integer value) {
            addCriterion("CUSTID <", value, "custid");
            return (Criteria) this;
        }

        public Criteria andCustidLessThanOrEqualTo(Integer value) {
            addCriterion("CUSTID <=", value, "custid");
            return (Criteria) this;
        }

        public Criteria andCustidIn(List<Integer> values) {
            addCriterion("CUSTID in", values, "custid");
            return (Criteria) this;
        }

        public Criteria andCustidNotIn(List<Integer> values) {
            addCriterion("CUSTID not in", values, "custid");
            return (Criteria) this;
        }

        public Criteria andCustidBetween(Integer value1, Integer value2) {
            addCriterion("CUSTID between", value1, value2, "custid");
            return (Criteria) this;
        }

        public Criteria andCustidNotBetween(Integer value1, Integer value2) {
            addCriterion("CUSTID not between", value1, value2, "custid");
            return (Criteria) this;
        }

        public Criteria andBankidIsNull() {
            addCriterion("BANKID is null");
            return (Criteria) this;
        }

        public Criteria andBankidIsNotNull() {
            addCriterion("BANKID is not null");
            return (Criteria) this;
        }

        public Criteria andBankidEqualTo(Integer value) {
            addCriterion("BANKID =", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidNotEqualTo(Integer value) {
            addCriterion("BANKID <>", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidGreaterThan(Integer value) {
            addCriterion("BANKID >", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidGreaterThanOrEqualTo(Integer value) {
            addCriterion("BANKID >=", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidLessThan(Integer value) {
            addCriterion("BANKID <", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidLessThanOrEqualTo(Integer value) {
            addCriterion("BANKID <=", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidIn(List<Integer> values) {
            addCriterion("BANKID in", values, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidNotIn(List<Integer> values) {
            addCriterion("BANKID not in", values, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidBetween(Integer value1, Integer value2) {
            addCriterion("BANKID between", value1, value2, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidNotBetween(Integer value1, Integer value2) {
            addCriterion("BANKID not between", value1, value2, "bankid");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ACCOUNT
     *
     * @mbggenerated do_not_delete_during_merge Sat Oct 31 14:04:36 EDT 2015
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ACCOUNT
     *
     * @mbggenerated Sat Oct 31 14:04:36 EDT 2015
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value) {
            super();
            this.condition = condition;
            this.value = value;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.betweenValue = true;
        }
    }
}