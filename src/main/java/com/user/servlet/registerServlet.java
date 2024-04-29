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

@WebServlet("/register")
public class registerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		try {
			String name=req.getParameter("mhName");
			String gmail=req.getParameter("mhGmail");
			String password=req.getParameter("mhPassword");
			String phone=req.getParameter("mhPhone");
			String mssv=req.getParameter("mhMSSV");
			String check=req.getParameter("check");
			
			// System.out.println(name+""+gmail+""+password+""+phone+""+check);
			
			user_SV us = new user_SV();
			us.setNamesv(name);
			us.setGmail(gmail);
			us.setPassword(password);
			us.setMssv(mssv);
			us.setPhone(phone);
			
			HttpSession session = req.getSession();
			
			if(check!=null) 
			{
				
				userDAOImpl dao=new userDAOImpl(DBConnect.getConn());
				boolean f2=dao.checkUser(gmail);
				
				if(f2) {
					boolean f=dao.userRegister(us);
					
					if(f) {
						//System.out.println("true");
						session.setAttribute("trueMess","Register successfull");
						resp.sendRedirect("submit.jsp");
					}else {
						//System.out.println("false");
						session.setAttribute("failMess","Somethinng wrong on server");
						resp.sendRedirect("register.jsp");
					}
				}else {
					session.setAttribute("failMess","Please check, because Gmail already exists");
					resp.sendRedirect("register.jsp");
				}
				
			}else {
				session.setAttribute("failMess","Please check");
				resp.sendRedirect("register.jsp");
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
