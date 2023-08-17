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



//import statements...

@WebServlet("/user_register")
public class UserRegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("name");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
		
			User u=new User(name, email, password);
			User_dao dao=new User_dao(Dbconnection.getConn());
		HttpSession session=req.getSession();
			boolean f=dao.register(u);
			if(f) {
				session.setAttribute("sucMsg", "Register success");
				resp.sendRedirect("Signup_page.jsp");
			}
			else {
				session.setAttribute("errorMSg", "some thing error");
				resp.sendRedirect("Signup_page.jp");
			}
		} catch (Exception e) {
			
		}
	}
  
}
