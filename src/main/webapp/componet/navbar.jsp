<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false"%>
<%@page import="com.*"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fas fa-hospital-alt"></i>LINKCODE HOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
         <c:if test="${empty userObj}"> 
      
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fas fa-sign-in"></i>ADMIN</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp">DOCTOR</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTMENT</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login.jsp">USER</a>
        </li>
        
   </c:if>
      
     
       
   <c:if test="${not empty userObj}">
       
       <li class="nav-item"><a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTNMENT</a>
       
        <li class="nav-item"><a class="nav-link active" aria-current="page" href="view_appointment.jsp">VIEW APPOINTNMENT</a>
        
           <li class="nav-item dropdown">
      
         <form class="d-flex">
     <div class="dropdown">
     <button class="btn btn-light dropdown-toggle" type="button" 
     id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user-large"></i> ${userObj.fullname }</button>
     <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
  
         <li><a class="dropdown-item" href="changepassword.jsp">Change Password</a></li>
     <li><a class="dropdown-item" href="userLogout">Logout</a></li>
     </ul>
     </div>
     </form>
       
      </li>
      
      
      
 
       </c:if>
        
       
        
       
      </ul>
     
    </div>
  </div>
</nav>