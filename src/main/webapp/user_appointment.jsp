<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Appointment</title>
<%@include file="componet/allcss.jsp"%>

<style type="text/css">

.paint-card{
box-shadow: 0 0 5px rgba(0,0,0.3);
}

.backImg{
   background:linear-gradient(rgba(0,0,0,.4),rgba(0,0,.4)),
   url("images/mt.jpg");
   height: 20vh;
   width: 100%;
   background-size: cover;
   background-repeat: no-repeat;
   
   }
}
</style>
</head>
<body>
<%@include file="componet/navbar.jsp"%>

 <div class="container-fulid backImg p-5">
 <p class="text-center fs-2 text-white"></p>
 </div>
 
 <div class="container p-3">
 <div class="row">
 
 
 
 <div class="col-md-6">
 <div class="card paint-card">
 <div class="card-body">
 <p class="text-center fs-3">User Appointment</p>
 
 <c:if test="${not empty sucMsg}">
     <p class="text-center text-success fs-5">${sucMsg}</p>
     <c:remove var="sucMsg" scope="session" />
</c:if>


<c:if test="${not empty errorMsg}">
<p class="text-center text-danger fs-5">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>
</c:if>

 <form class="row g-3" action="add_appoint" method="post">
 
  <input type="hidden" name="userId" value="${userObj.id }">
  
  <div class="col-md-6">
  <label for="inputEmail4" class="form-label">full name</label>
  <input required type="text" class="form-control" name="fullname">
  </div>
  
  <div class="col-md-6">
  <label>Gender</label>
  <select class="form-control" name="gender" required>
  <option value="male">Male</option>
  <option value="female">Female</option>
  </select>
  </div>
  
  <div class="col-md-6">
  <label for="inputEmail4" class="form-label">Age</label>
  <input required type="text" class="form-control" name="age">
  </div>
  
   <div class="col-md-6">
  <label for="inputEmail4" class="form-label">Appointment</label>
  <input required type="date" class="form-control" name="appoinDate">
  </div>
  
   <div class="col-md-6">
  <label for="inputEmail4" class="form-label">Email</label>
  <input required type="text" class="form-control" name="email">
  </div>
  
   <div class="col-md-6">
  <label for="inputEmail4" class="form-label">Phone No</label>
  <input required type="text" class="form-control" name="phNo">
  </div>
  
   <div class="col-md-6">
  <label for="inputEmail4" class="form-label">Diseases</label>
  <input required type="text" class="form-control" name="diseases">
  </div>
  
   <div class="col-md-6">
  <label for="inputEmail4" class="form-label">Doctor</label>
 <select  required class="form-control" name="doctorId" >
  <option value="">--select--</option>
  <%
  DoctorDao dao=new DoctorDao(DBConnect.getconn());
		  List<Doctor> list=dao.getAllDoctors();
		  
		  for(Doctor d: list)
		  {%>
		  <option value="<%=d.getId() %>" ><%=d.getFullname() %>(<%=d.getSpecialist() %>)</option>
		  <% 
		  }%>
  </select>
  </div>
  
  <div class="col-md-12">
  <label>Full Address</label>
  <textarea requried  type="text" name="address" class="form-control" rows="3" cols=""></textarea>
  </div>
  
  <c:if test="${empty userObj }">
  <a href="user_login.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
  </c:if>
  
   <c:if test="${not empty userObj }">
  <button class="col-md-6 offset-md-3 btn btn-primary">Submit</button>
  </c:if>
  
 </form>
 
 </div>
 </div>
 </div>
 
 <div class="col-md-3 p-3">
 <img alt="" src="images/giphy.gif"></img>
 </div>
 </div>
 </div>
<%@include file="componet/footer.jsp"%>
</body>
</html>