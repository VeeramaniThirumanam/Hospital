package com.user.servelt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.User_dao;
import com.db.Dbconnection;
import com.entity.User;
@WebServlet("/userLogin")
public class UserLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	try {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		HttpSession session=req.getSession();
		User_dao dao=new User_dao(Dbconnection.getConn());
		User user=dao.login(email, password);
		if(user!=null) {
		
		session.setAttribute("userobj", user);
		resp.sendRedirect("index.jsp");
	}
		else {
			session.setAttribute("errorMSg", "invalid & password");
			resp.sendRedirect("User_login.jsp");
		}
		
	}
catch (Exception e) {
		
	}


	}
}

