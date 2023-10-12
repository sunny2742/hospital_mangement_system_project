<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@page import="com.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../componet/allcss.jsp"%>
<style type="text/css">
.paint-card{
box-shadow: 0 0 5px rgba(0,0,0.3);
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty doctorObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp"%>

<p class="text-center fs-3">Doctor Dashboard<p>
<p class="container p-5">
<div class="row">

<%
Doctor d=(Doctor)session.getAttribute("doctorObj");
DoctorDao dao=new DoctorDao(DBConnect.getconn()); %>
<div class="col-md-4 offset-md-2">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fas fa-user-circle fa-3x"></i><br>
<p class="fs-4 text-center">Doctor<br><%=dao.countDoctor() %></p>
</div>
</div>
</div>


<div class="col-md-4">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fas fa-user-circle fa-3x"></i><br>
<p class="fs-4 text-center">Total Appointment<br><%=dao.countAppointmentbydoctorid(d.getId()) %></p>
</div>
</div>
</div>

</div>
</p>
</body>
</html>