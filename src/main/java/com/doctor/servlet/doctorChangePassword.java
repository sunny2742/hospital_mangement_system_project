package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dao.UserDao;
import com.db.DBConnect;

@WebServlet("/doctChangePassword")
public class doctorChangePassword extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int uid=Integer.parseInt(req.getParameter("uid"));
		String oldPassword=req.getParameter("oldPassword");
		String newPassword=req.getParameter("newPassword");
		System.out.println(""+uid);
		System.out.println(""+oldPassword);
		
		DoctorDao dao=new DoctorDao(DBConnect.getconn());
		
		HttpSession session=req.getSession();
		

		if(dao.checkOldPassword(uid, oldPassword)) {
			
			if(dao.changePassword(uid, newPassword)) {
				session.setAttribute("sucMsg","Password Change Sucessfully..");
				resp.sendRedirect("doctor/editprofile.jsp");
			}
			else {
				session.setAttribute("errorMsg","something Wrong..");
				resp.sendRedirect("doctor/editprofile.jsp");
			}
		}
		else {
			session.setAttribute("errorMsg","Old Password is Wrong..");
			resp.sendRedirect("doctor/editprofile.jsp");
		}
	}
}
