package com.entity;

public class monOrder {
	private int id;
	
	private String loaiDV;
	private String ma_tenMH;
	private String timeMH;
	private String price;
	private String reasonMMH;
	private String payment;
	
	
	
	private String nameSV;
	private String gmailSV;
	private String mssv;
	private String phone;
	
	private String khoaSV;
	private String classSV;
	
	public monOrder() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	
	




public monOrder(String loaiDV, String ma_tenMH, String timeMH, String price, String reasonMMH, String payment,
			String nameSV, String gmailSV, String mssv, String phone, String khoaSV, String classSV) {
		super();
		this.loaiDV = loaiDV;
		this.ma_tenMH = ma_tenMH;
		this.timeMH = timeMH;
		this.price = price;
		this.reasonMMH = reasonMMH;
		this.payment = payment;
		this.nameSV = nameSV;
		this.gmailSV = gmailSV;
		this.mssv = mssv;
		this.phone = phone;
		this.khoaSV = khoaSV;
		this.classSV = classSV;
	}









// Tổng 
	public monOrder(int id, String loaiDV, String ma_tenMH, String timeMH, String price, String reasonMMH,
			String payment, String nameSV, String gmailSV, String mssv, String phone, String khoaSV, String classSV) {
		super();
		this.id = id;
		this.loaiDV = loaiDV;
		this.ma_tenMH = ma_tenMH;
		this.timeMH = timeMH;
		this.price = price;
		this.reasonMMH = reasonMMH;
		this.payment = payment;
		this.nameSV = nameSV;
		this.gmailSV = gmailSV;
		this.mssv = mssv;
		this.phone = phone;
		this.khoaSV = khoaSV;
		this.classSV = classSV;
	}

	








	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLoaiDV() {
		return loaiDV;
	}

	public void setLoaiDV(String loaiDV) {
		this.loaiDV = loaiDV;
	}

	public String getMa_tenMH() {
		return ma_tenMH;
	}

	public void setMa_tenMH(String ma_tenMH) {
		this.ma_tenMH = ma_tenMH;
	}

	public String getTimeMH() {
		return timeMH;
	}

	public void setTimeMH(String timeMH) {
		this.timeMH = timeMH;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getReasonMMH() {
		return reasonMMH;
	}

	public void setReasonMMH(String reasonMMH) {
		this.reasonMMH = reasonMMH;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getNameSV() {
		return nameSV;
	}

	public void setNameSV(String nameSV) {
		this.nameSV = nameSV;
	}

	public String getGmailSV() {
		return gmailSV;
	}

	public void setGmailSV(String gmailSV) {
		this.gmailSV = gmailSV;
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

	public String getKhoaSV() {
		return khoaSV;
	}

	public void setKhoaSV(String khoaSV) {
		this.khoaSV = khoaSV;
	}

	public String getClassSV() {
		return classSV;
	}

	public void setClassSV(String classSV) {
		this.classSV = classSV;
	}









	@Override
	public String toString() {
		return "monOrder [id=" + id + ", loaiDV=" + loaiDV + ", ma_tenMH=" + ma_tenMH + ", timeMH=" + timeMH
				+ ", price=" + price + ", reasonMMH=" + reasonMMH + ", payment=" + payment + ", nameSV=" + nameSV
				+ ", gmailSV=" + gmailSV + ", mssv=" + mssv + ", phone=" + phone + ", khoaSV=" + khoaSV + ", classSV="
				+ classSV + "]";
	}

	
	
}
