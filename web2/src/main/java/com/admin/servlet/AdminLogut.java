package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/adminLogut")
public class AdminLogut extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		
		HttpSession session=req.getSession();
		session.removeAttribute("adminobj");
		session.setAttribute("succMsg","LogoutSuccessfully" );
		resp.sendRedirect("Admin_login.jsp");
	} catch (Exception e) {
		
	}
	}

}
