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
<div class="col-md-4  offset-md-4">
<div class="card paint-card">
<div class="card-body">
<p class="fs-3 text-center">Edit Doctor Details</p>

<c:if test="${not empty sucMsg}">
     <p class="text-center text-success" role="alert">${sucMsg}</p>
     <c:remove var="sucMsg" scope="session" />
</c:if>

<c:if test="${not empty errorMsg}">
<p class="text-center text-danger" role="alert">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>
</c:if>


<!--  
<%
 int id=Integer.parseInt(request.getParameter("id"));
 DoctorDao dao2=new DoctorDao(DBConnect.getconn());
 Doctor d=dao2.getDoctorById(id);
%>
-->

<form action="../updateDoctor" method="post">
<div class="mb-3">
<label class="form-label">Full name</label>
<input type="text" required name="fullname" class="form-control" value="<%=d.getFullname()%>">
</div>

<div class="mb-3">
<label class="form-label">Dob</label>
<input type="date" required name="dob" class="form-control" value="<%=d.getDob()%>">
</div>

<div class="mb-3">
<label class="form-label">Qualification</label>
<input type="text" required name="qualification" class="form-control" value="<%=d.getQualification()%>">
</div>

<div class="mb-3">
<label class="form-label">Specialist</label>
<select name="spec" required class="form-control">
<option>--select--</option>
<% SpecialistDao dao=new SpecialistDao(DBConnect.getconn());
List<Specialist> list =dao.getAllSpecialist();
for(Specialist s:list)
{%>
<option><%=s.getSpec_name()%></option>
<%}
%>

</select>
</div>

<div class="mb-3">
<label class="form-label">Email</label>
<input type="text" required name="email" class="form-control" value="<%=d.getEmail()%>">
</div>

<div class="mb-3">
<label class="form-label">Mob no</label>
<input type="text" required name="mobno" class="form-control" value="<%=d.getMob()%>">
</div>

<div class="mb-3">
<label class="form-label">Password</label>
<input type="text" required name="password" class="form-control" value="<%=d.getPassword()%>">
</div>

<input type="hidden" name="id" value="<%=d.getId()%>">
<button type="submit" class="btn btn-success col-md-12">Update</button>
</form>
</div>

</div>
</div>

</div>
</div>
</body>
</html>