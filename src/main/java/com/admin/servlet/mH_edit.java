package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.khoaHocDAOImpl;
import com.DB.DBConnect;
import com.entity.monOrder;

@WebServlet("/editMonHoc")
@MultipartConfig
public class mH_edit extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		try {
			int mID = Integer.parseInt(req.getParameter("mID"));
			String mGmail = req.getParameter("mGmail");
			String mTen = req.getParameter("mTen");
			String mMssv = req.getParameter("mMssv");
			String mKhoa = req.getParameter("mKhoa");
			String mLop = req.getParameter("mLop");
			String mLoai = req.getParameter("mLoai");
			String mMH = req.getParameter("mMH");
			String mCa = req.getParameter("mCa");
			
			monOrder mon = new monOrder();
			mon.setId(mID);
			mon.setGmailSV(mGmail);
			mon.setNameSV(mTen);
			mon.setMssv(mMssv);
			mon.setKhoaSV(mKhoa);
			mon.setClassSV(mLop);
			mon.setLoaiDV(mLoai);
			mon.setMa_tenMH(mMH);
			mon.setTimeMH(mCa);
			
			khoaHocDAOImpl dao = new khoaHocDAOImpl(DBConnect.getConn());
			boolean f=dao.updateEditMH(mon);
			
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("trueU", "Update success");
				resp.sendRedirect("admin/text0.jsp");
			}else {
				session.setAttribute("faileU", "ERROR success");
				resp.sendRedirect("admin/text0.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
