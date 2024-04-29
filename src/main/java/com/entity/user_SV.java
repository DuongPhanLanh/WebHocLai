package com.entity;

public class user_SV {
	private int id;
	private String namesv;
	private String gmail;
	private String password;
	private String mssv;
	private String phone;
	
	public user_SV() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public user_SV(String namesv, String gmail, String password, String mssv, String phone) {
		super();
		this.namesv = namesv;
		this.gmail = gmail;
		this.password = password;
		this.mssv = mssv;
		this.phone = phone;
	}



	public user_SV(int id, String namesv, String gmail, String password, String mssv, String phone) {
		super();
		this.id = id;
		this.namesv = namesv;
		this.gmail = gmail;
		this.password = password;
		this.mssv = mssv;
		this.phone = phone;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNamesv() {
		return namesv;
	}

	public void setNamesv(String namesv) {
		this.namesv = namesv;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMssv() {
		return mssv;
	}

	public void setMssv(String mssv) {
		this.mssv = mssv;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "user_SV [id=" + id + ", namesv=" + namesv + ", gmail=" + gmail + ", password=" + password + ", mssv="
				+ mssv + ", phone=" + phone + "]";
	}
	
	
}
