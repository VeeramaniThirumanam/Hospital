package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Specalist_dao;
import com.db.Dbconnection;
@WebServlet("/addspecalist")
public class AddSpecalist  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String specalName=req.getParameter("specalName");
	
	Specalist_dao dao=new Specalist_dao(Dbconnection.getConn());
	boolean f = dao.addspecialist(specalName);

	HttpSession session = req.getSession();

	if (f) {
		session.setAttribute("succMsg", "Specialist Added");
		resp.sendRedirect("admin/index.jsp");
	} else {
		session.setAttribute("errorMsg", "something wrong on server");
		resp.sendRedirect("admin/index.jsp");
	}

	}

}
