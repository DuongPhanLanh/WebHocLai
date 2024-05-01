package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.khoaHocDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")
public class mH_delete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int i = Integer.parseInt(req.getParameter("ID"));
			
			khoaHocDAOImpl dao = new khoaHocDAOImpl(DBConnect.getConn());
			boolean f =dao.deleteMH(i);
			
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
