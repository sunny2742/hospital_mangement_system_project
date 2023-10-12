package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DBConnect;
import com.entity.Appointment;

@WebServlet("/add_appoint")
public class AppointmentServlet extends HttpServlet {
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
	try {
		
		 int userId=Integer.parseInt(req.getParameter("userId"));
			String fullname=req.getParameter("fullname");
			String gender=req.getParameter("gender");
			String age=req.getParameter("age");
			String appoinDate=req.getParameter("appoinDate");
			String email=req.getParameter("email");
			String phNo=req.getParameter("phNo");
			String diseases=req.getParameter("diseases");
			int doctorId=Integer.parseInt(req.getParameter("doctorId"));
			String address=req.getParameter("address");
			String status=req.getParameter("status");
			
			Appointment ap=new Appointment(userId, fullname, gender, age, appoinDate, email, phNo, diseases, doctorId, address, "pending");

			System.out.println(userId+""+fullname+""+gender+""+age+""+address+""+doctorId);
			AppointmentDao dao=new AppointmentDao(DBConnect.getconn());
			
			HttpSession session=req.getSession();
			
			if(dao.addAppointment(ap)) {
				
				session.setAttribute("sucMsg","Appointment Sucessfully..");
				resp.sendRedirect("user_appointment.jsp");
				
			}
			else {
				session.setAttribute("errorMsg","Something Wrong on server..");
				resp.sendRedirect("user_appointment.jsp");
			}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
		
		
		
		
	}
	
}


