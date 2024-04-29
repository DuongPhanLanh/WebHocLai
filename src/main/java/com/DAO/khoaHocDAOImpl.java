package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.monOrder;

public class khoaHocDAOImpl implements khoaHocDAO {

	private Connection conn;
	
	public khoaHocDAOImpl(Connection conn) {
		super();
		this.conn=conn;
	}
	
	@Override
	public int getMonHoc() {
		int i=1;
		try {
			String sql="select * from mon_order";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public boolean addMonHoc(monOrder mh) {
		boolean f = false;
		try {
			String sql="insert into mondk(loaidv,ma_tenMH,timeMH,price,reasonMH,payment,gmailSV,nameSV,mssv,phone,khoaSV,classSV) value(?,?,?,?,?,?,?,?,?,?,?,?)";			

			PreparedStatement ps=conn.prepareStatement(sql);
			
			
				ps.setString(1, mh.getLoaiDV());
				ps.setString(2,mh.getMa_tenMH());
				ps.setString(3, mh.getTimeMH());
				ps.setString(4, mh.getPrice());
				ps.setString(5, mh.getReasonMMH());
				ps.setString(6, mh.getPayment());
				
				ps.setString(7, mh.getGmailSV());
				ps.setString(8, mh.getNameSV());
				ps.setString(9, mh.getMssv());
				ps.setString(10, mh.getPhone());
				ps.setString(11, mh.getKhoaSV());
				ps.setString(12, mh.getClassSV());
				
			int i = ps.executeUpdate();
			
			if(i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<monOrder> getAllMonHoc() {
		List<monOrder> list = new ArrayList<monOrder>();
		monOrder mh = null;
		
		
		try {
			String sql = "select * from mondk";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				mh = new monOrder();
				
				mh.setId(rs.getInt(1));
				mh.setLoaiDV(rs.getString(2));
				mh.setMa_tenMH(rs.getString(3));
				mh.setTimeMH(rs.getString(4));
				mh.setPrice(rs.getString(5));
				mh.setReasonMMH(rs.getString(6));
				
				mh.setPayment(rs.getString(7));
				mh.setGmailSV(rs.getString(8));
				mh.setNameSV(rs.getString(9));
				
				mh.setMssv(rs.getString(10));
				mh.setPhone(rs.getString(11));
				mh.setKhoaSV(rs.getString(12));
				mh.setClassSV(rs.getString(13));
				
				
				list.add(mh);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<monOrder> getMonHocByGmail(String mhgmail) {
		List<monOrder> list = new ArrayList<monOrder>();
		monOrder mh = null;
		
		
		try {
			String sql = "select * from mondk where gmailSV=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, mhgmail);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				mh = new monOrder();
				
				mh.setId(rs.getInt(1));
				mh.setLoaiDV(rs.getString(2));
				mh.setMa_tenMH(rs.getString(3));
				mh.setTimeMH(rs.getString(4));
				mh.setPrice(rs.getString(5));
				mh.setReasonMMH(rs.getString(6));				
				mh.setPayment(rs.getString(7));
				
				mh.setGmailSV(rs.getString(8));
				mh.setNameSV(rs.getString(9));			
				mh.setMssv(rs.getString(10));
				mh.setPhone(rs.getString(11));
				
				mh.setKhoaSV(rs.getString(12));
				mh.setClassSV(rs.getString(13));
				
				
				list.add(mh);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

//	@Override
//	public boolean addThongTin(monOrder mh) {
//		boolean f = false;
//		try {
//			String sql="insert into mondk(loaidv,ma_tenMH,timeMH,price,reasonMH,payment,gmailSV,nameSV,mssv,phone,khoaSV,classSV) value(?,?,?,?,?,?,?,?,?,?,?,?)";			
//
//			PreparedStatement ps=conn.prepareStatement(sql);
//			
//				ps.setString(1, mh.getLoaiDV());
//				ps.setString(2, mh.getMa_tenMH());
//				ps.setString(3, mh.getTimeMH());
//				ps.setString(4, mh.getPrice());
//				ps.setString(5, mh.getReasonMMH());
//				ps.setString(6,mh.getPayment());
//				
//				
//				ps.setString(7, mh.getGmailSV());
//				ps.setString(8, mh.getNameSV());
//				ps.setString(9, mh.getMssv());
//				ps.setString(10, mh.getPhone());
//				ps.setString(11, mh.getKhoaSV());
//				ps.setString(12, mh.getClassSV());
//				
//				
//			int i = ps.executeUpdate();
//			
//			if(i == 1) {
//				f = true;
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return f;
//	}
//
//	@Override
//	public monOrder login(String ld) {
//		monOrder mh = null;
//		try {
//			String sql = "select * from mon_order where reasonMH=?";
//			PreparedStatement ps = conn.prepareStatement(sql);
//			ps.setString(1, ld);
//			
//			ResultSet rs = ps.executeQuery();
//			
//			while (rs.next()) {
//				mh = new monOrder();
//				
//				mh.setId(rs.getInt(1));
//				mh.setLoaiDV(rs.getString(2));
//				mh.setMa_tenMH(rs.getString(3));
//				mh.setTimeMH(rs.getString(4));
//				mh.setPrice(rs.getString(5));
//				mh.setReasonMMH(rs.getString(6));				
//				mh.setPayment(rs.getString(7));
////				
////				mh.setGmailSV(rs.getString(8));
////				mh.setNameSV(rs.getString(9));			
////				mh.setMssv(rs.getString(10));
////				mh.setPhone(rs.getString(11));
////				
////				mh.setKhoaSV(rs.getString(12));
////				mh.setClassSV(rs.getString(13));
////				
//				
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return mh;
//	}



	
	

}
