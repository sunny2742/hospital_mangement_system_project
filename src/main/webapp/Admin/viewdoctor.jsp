 <%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../componet/allcss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>

<div class="container-fluid p-3">
<div class="row">

<div class="col-md-12">
<div class="card paint-card">
<div class="card-body">
<p class="fs-3 text-center">Doctor Details</p>

<c:if test="${not empty sucMsg}">
     <p class="text-center text-success" role="alert">${sucMsg}</p>
     <c:remove var="sucMsg" scope="session" />
</c:if>

<c:if test="${not empty errorMsg}">
<p class="text-center text-danger" role="alert">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>
</c:if>

<table class="table">
<thead>
<tr>
<th scope="col">Full Name</th>
<th scope="col">Dob</th>
<th scope="col">Qualification</th>
<th scope="col">Specialist</th>
<th scope="col">Email</th>
<th scope="col">Mob No</th>
<th scope="col">Action</th>
</tr>
</thead>
<tbody>
<%DoctorDao dao2=new DoctorDao(DBConnect.getconn());
   List<Doctor> list2=dao2.getAllDoctors();
   for(Doctor d:list2)
 {%>
	<tr>
	<td><%=d.getFullname() %></td>
	<td><%=d.getDob() %></td>
	<td><%=d.getQualification() %></td>
	<td><%=d.getSpecialist() %></td>
	<td><%=d.getEmail() %></td>
	<td><%=d.getMob() %></td>
	<td>
	<a href="editDoctor.jsp?id=<%=d.getId()%>" class="btn btn-sm btn-primary">Edit</a>
	
	<a href="../deleteDoctor?id=<%=d.getId()%>" class="btn btn-sm btn-danger">Delete</a>
	<td>
	</tr>
	<%} %>
</tbody>

</table>
</div>
</div>
</div>
</div>
</div>
</body>
</html>