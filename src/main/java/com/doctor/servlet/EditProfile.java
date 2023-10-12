package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/doctorupdate")
public class EditProfile extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String fullname=req.getParameter("fullname");
			String dob=req.getParameter("dob");
			String qualification=req.getParameter("qualification");
			String spec=req.getParameter("spec");
			String email=req.getParameter("email");
			String mobno=req.getParameter("mobno");
		
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			Doctor d=new Doctor(id,fullname, dob, qualification, spec, email, mobno,"");
			
			DoctorDao dao=new DoctorDao(DBConnect.getconn());
			
			HttpSession session=req.getSession();
			
			if(dao.editDoctor(d)) {
				Doctor updateDoctor=dao.getDoctorById(id);
				session.setAttribute("sucMsgd","Doctor updated Sucessfully..");
				session.setAttribute("doctorObj", updateDoctor);
				resp.sendRedirect("doctor/editprofile.jsp");
				
			}
			else {
				session.setAttribute("errorMsgd","Something Wrong..");
				resp.sendRedirect("doctor/editprofile.jsp");
			}
		
				
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
