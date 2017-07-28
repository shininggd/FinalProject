package com.kh.purchase;

import java.sql.Date;

public class PurchaseDTO {
	
	private int num;
	private int snum;
	private int price;
	private String product;
	private String id;
	private String name;
	private String type;
	private Date p_date;
	private String tid;
	private String bank;
	private String cnumber;
	private String pnumber;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getBank() {
		if(this.bank == null){
			this.bank = "";
		}
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getCnumber() {
		if(this.cnumber == null){
			this.cnumber = "";
		}
		return cnumber;
	}
	public void setCnumber(String cnumber) {
		this.cnumber = cnumber;
	}
	public String getPnumber() {
		if(this.pnumber == null){
			this.pnumber = "";
		}
		return pnumber;
	}
	public void setPnumber(String pnumber) {
		this.pnumber = pnumber;
	}
	
	
	

}
