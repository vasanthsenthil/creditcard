package edu.bridgeport.cpsc350.project1.util;

public class DataGridModel  implements java.io.Serializable {
	
	private static final long serialVersionUID = 7232798260610351343L;
	private int page; 
	private int rows ; 
	private String sort; 
	private String order; 
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	
	
}
