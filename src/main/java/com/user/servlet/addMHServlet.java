package com.user.servlet;

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


@WebServlet("/addMH")
@MultipartConfig
public class addMHServlet extends HttpServlet  {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		try {
			String mhLoai=req.getParameter("mhLoai");
			String dkMH=req.getParameter("dkMH");
			String dkCa=req.getParameter("dkCa");
			String dkPrice=req.getParameter("dkPrice");
			String dkLyDo=req.getParameter("dkLyDo");
			String mhPayment=req.getParameter("mhPayment");
			
			String name=req.getParameter("nameDK");
			String mail=req.getParameter("gmailDK");
			String mssv=req.getParameter("mssvDK");
			String phone=req.getParameter("phoneDK");
			
			String khoa=req.getParameter("dkKhoa");
			String lop=req.getParameter("dkLop");	
			
			monOrder mon = new monOrder(mhLoai, dkMH, dkCa, dkPrice, dkLyDo, mhPayment, name, mail, mssv, phone, khoa, lop);
			
			
			khoaHocDAOImpl dao = new khoaHocDAOImpl(DBConnect.getConn());
			boolean f=dao.addMonHoc(mon);
			
			HttpSession session = req.getSession();	
			if(f) {
				session.setAttribute("trueP", "Success");
				resp.sendRedirect("submit_DK.jsp");
			}else {
				session.setAttribute("falseP", "Thông tin nhập thiếu");
				resp.sendRedirect("add_MH.jsp");
			}
			
			// System.out.println(mon);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}


