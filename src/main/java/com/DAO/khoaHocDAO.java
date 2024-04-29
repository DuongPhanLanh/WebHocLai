package com.DAO;

import java.util.List;

import com.entity.monOrder;

public interface khoaHocDAO {
	
	public int getMonHoc();
	
	public boolean addMonHoc(monOrder mh);
	
	public List<monOrder> getAllMonHoc();
	
	// nội dung tron add_MH.jsp
	public List<monOrder> getMonHocByGmail(String mhgmail);
	
	//public monOrder login(String ld);

	//public boolean addThongTin(monOrder mh);
}
