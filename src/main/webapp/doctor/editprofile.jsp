<%@page import="com.entity.Specialist"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="java.util.List"%>
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
</style>
</head>
<body>
<%@include file="navbar.jsp"%>

<c:if test="${empty doctorObj }">
<c:redirect url="doctor_login.jsp"></c:redirect>
</c:if>


<div class="container p-5">
<div class="row">
<div class="col-md-4 ">
<div class="card paint-card">
<p class="text-center fs-3">Change Password</p>
<c:if test="${not empty sucMsg}">
     <p class="text-center text-success fs-5">${sucMsg}</p>
     <c:remove var="sucMsg" scope="session" />
</c:if>


<c:if test="${not empty errorMsg}">
<p class="text-center text-danger fs-5">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>
</c:if>

<div class="card-body">
<form action="../doctChangePassword" method="post">

<div class="mb-3">
<label>Enter New Password</label>
<input type="text" name="newPassword" class="form-control" required>
</div>

<div class="mb-3">
<label>Enter Old Password</label>
<input type="text" name="oldPassword" class="form-control" required>
</div>
<input type="hidden" name="uid" value="${doctorObj.id }">
<button class="btn btn-success col-md-12">Change Password</button>
</form>
</div>
</div>
</div>

<div class="col-md-5 offset-md-2">
<div class="card paint-card">
<p class="text-center fs-3">Edit Profile</p>

<c:if test="${not empty sucMsgd}">
     <p class="text-center text-success fs-5">${sucMsgd}</p>
     <c:remove var="sucMsgd" scope="session" />
</c:if>


<c:if test="${not empty errorMsgd}">
<p class="text-center text-danger fs-5">${errorMsgd}</p>
<c:remove var="errorMsgd" scope="session"/>
</c:if>

<div class="card-body">
<form action="../doctorupdate" method="post">
<div class="mb-3">
<label class="form-label">Full name</label>
<input type="text" required name="fullname" class="form-control" value="${doctorObj.fullname }">
</div>

<div class="mb-3">
<label class="form-label">Dob</label>
<input type="date" required name="dob" class="form-control" value="${doctorObj.dob }">
</div>

<div class="mb-3">
<label class="form-label">Qualification</label>
<input type="text" required name="qualification" class="form-control" value="${doctorObj.qualification }">
</div>

<div class="mb-3">
<label class="form-label">Specialist</label>
<select name="spec" required class="form-control">
<option>${doctorObj.specialist }</option>
<% SpecialistDao dao=new SpecialistDao(DBConnect.getconn());
List<Specialist> list=dao. getAllSpecialist();
for(Specialist s:list)
{%>
<option><%=s.getSpec_name()%></option>
<%}
%>

</select>
</div>

<div class="mb-3">
<label class="form-label">Email</label>
<input type="text" readonly required name="email" class="form-control" value=" ${doctorObj.email }">
</div>

<div class="mb-3">
<label class="form-label">Mob no</label>
<input type="text" required name="mobno" class="form-control" value="${doctorObj.mob }">
</div>


<input type="hidden" name="id" value="${doctorObj.id }">
<button type="submit" class="btn btn-success col-md-12">Update</button>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>