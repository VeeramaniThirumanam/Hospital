package com.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.Dbconnection;
import com.entity.Doctor;
@WebServlet("/add")
public class AddDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullName = req.getParameter("fullname");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");

			String specialist = req.getParameter("spec");

			String email = req.getParameter("email");
			String mobno = req.getParameter("mobno");
			String password = req.getParameter("password");
			Doctor d = new Doctor(fullName,dob,qualification,specialist,email,mobno,password);

			DoctorDao dao = new DoctorDao(Dbconnection.getConn());
			HttpSession session = req.getSession();
			if (dao.registerDoctor(d)) {
				session.setAttribute("succMsg", "Doctor Added Sucessfully..");
				resp.sendRedirect("admin/Docter.jsp");
			} 
			else {
				session.setAttribute("errorMsg", "something wrong on server");
				resp.sendRedirect("admin/Docter.jsp");
			}


		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	
	
}
