<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../componet/allcss.jsp"%>

<style type="text/css">
.paint-card{
box-shadow: 0 0 5px rgba(0,0,0.3);
}

.backImg{
   background:linear-gradient(rgba(0,0,0,.4),rgba(0,0,.4)),
   url("../images/mt.jpg");
   height: 20vh;
   width: 100%;
   background-size: cover;
   background-repeat: no-repeat;
   
   }
</style>
</head>
<body>
<%@include file="navbar.jsp"%>

<div class="col-md-12">
 <div class="card paint-card">
 <div class="card-body">
 <p class="fs-4 fw-bold text-center text-success">Appointment List</p>
 
 <table class="table">
 <thead>
 <tr>
 <th scope="col">Full Name</th>
 <th scope="col">Gender</th>
 <th scope="col">Age</th>
 <th scope="col">Appoint Date</th>
 <th scope="col">Email</th>
  <th scope="col">Mob No</th>
 <th scope="col">Diseases</th>
 <th scope="col">Doctor Name</th>
  <th scope="col">Address</th>
 <th scope="col">Status</th>
 </tr>
 </thead>
 <tbody>
<% 
  AppointmentDao dao=new AppointmentDao(DBConnect.getconn());
 DoctorDao dao2=new DoctorDao(DBConnect.getconn());
 List<Appointment> list=dao.getAllAppointment();
 for(Appointment ap:list){
  Doctor d= dao2.getDoctorById(ap.getDoctorId());
 %>
 <tr>
 <th><%=ap.getFullname() %></th>
  <td><%=ap.getGender() %></td>
   <td><%=ap.getAge() %></td>
    <td><%=ap.getAppoinDate() %></td>
     <td><%=ap.getEmail() %></td>
     <td><%=ap.getPhNo() %></td>
     <td><%=ap.getDiseases() %> </td>
      <td><%=d.getFullname() %> </td>
       <td><%=ap.getAddress() %> </td>
       <td><%=ap.getStatus() %> </td>
       
       
 </tr>

<%} %>


 </tbody>
 
 
 </table>
 </div>
 </div>
 </div>
 
</body>
</html>