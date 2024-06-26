package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAOImpl;
import com.DB.DBConnect;
import com.entity.user_SV;


@WebServlet("/login")
public class loginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
try {
			
			userDAOImpl dao=new userDAOImpl(DBConnect.getConn());			
			HttpSession session=req.getSession();
			
			String gmail=req.getParameter("mhGmail");
			String password=req.getParameter("mhPassword");
			
			if("admin@gmail.com".equals(gmail) && "admin".equals(password)) {
				user_SV us=new user_SV();
				session.setAttribute("userobj", us);
				resp.sendRedirect("admin/text0.jsp");
			}else {
				
				user_SV us=dao.login(gmail, password);
				if(us!=null) {
					session.setAttribute("userobj", us);
					resp.sendRedirect("index.jsp");
				}else {
					session.setAttribute("failedLog", "Đăng nhập ko hợp lệ");
					resp.sendRedirect("login.jsp");
				}								
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
