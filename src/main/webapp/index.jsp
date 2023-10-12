<%@page import="com.*"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index page</title>
<%@include file="componet/allcss.jsp"%>
<style type="text/css">
.paint-card{
box-shadow: 0 0 5px rgba(0,0,0.3);
}
</style>
 <link rel="stylesheet" href="about.css">
</head>
<body>
<%@include file="componet/navbar.jsp"%>


<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/do1.gif" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="images/mt.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="images/mh.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="container p-3">
<h2 class="text-center fs-2">KEY FEATURES OF HOSPITAL</h2>
<div class="row">
 <div class="col-md-8 p-5">
 <div class="row">   
 <div class="col-md-6 mt-2">
 <div class="card paint-card">
     <div class="card-body">
       <p class="fs-5">100% Safety</p>
       <p>Safety is our No1 Priority</p>
     </div>
   </div>
 </div> 
 
 <div class="col-md-6 mt-2">
 <div class="card paint-card">
     <div class="card-body">
       <p class="fs-5">Clean Enviroment</p>
       <p>Our clean enviroment for patients</p>
     </div>
   </div>
 </div> 
 
 <div class="col-md-6 mt-2">
 <div class="card paint-card">
     <div class="card-body">
       <p class="fs-5">Friendly Doctors</p>
       <p>Wherever the art of Medicine is loved, there is also a love of Humanity</p>
     </div>
   </div>
 </div> 
 
 <div class="col-md-6 mt-2">
 <div class="card paint-card">
     <div class="card-body">
       <p class="fs-5">Ambulance Service</p>
       <p>Best ambulance Service in india and also our success rate is 99%</p>
     </div>
   </div>
 </div> 
 


 </div>
</div>
   
    
 <div class="col-md-4 mt-5">
 <div class="card paint-card">
     <div class="card-body">
   <h3>Good health is greatest wealth</h3>
   <br>
   <h3 style="color: red ">Be aware, Take care</h3>
   <img alt="" src="images/doctor3.jpeg">
   </div>
   </div>
   
   </div>
   
  
   </div>
</div>


<hr>
<div>
<h2 class="text-center fs-2">OUR TEAM</h2>

<div class="card-group">
  <div class="card">
    <img src="images/doctor3.jpeg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Dr Jay Shukla(MBBS,MD,MDS)</h5>
      <p class="card-text">Founder</p>
      <p class="card-text">Specialist in brians disorders.</p>
      <p class="card-text"><small class="text-muted">Experience : 20 years</small></p>
    </div>
  </div>
  
  <div class="card">
    <img src="images/doctor2.jpeg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Dr Manik Lala(MBBS,MD,MDS)</h5>
      <p class="card-text">Specialist in Heart disorders.</p>
      <p class="card-text"><small class="text-muted">Experience : 20 years</small></p>
    </div>
  </div>
  <div class="card">
    <img src="images/doctor3.jpeg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Dr Sunny Gogawale(MBBS,MD,MDM</h5>
      <p class="card-text">Specialist in Medicine)</p>
      <p class="card-text"><small class="text-muted">Experience : 12 years</small></p>
    </div>
  </div>
</div>
</div>
</hr>
<br>

 <section class="contact-page-sec">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <div class="contact-info">
                <div class="contact-info-item">
                  <div class="contact-info-icon">
                    <i class="fas fa-map-marked"></i>
                  </div>
                  <div class="contact-info-text">
                    <h2>address</h2>
                    <span> Barve Memorial Complex, Office No 12 ,Third floor, Jangali Maharaj Rd, opposite Panchali Hotel, Shivajinagar, Pune, Maharashtra 411005</span> 
                    <span>karvenager,pune-52</span> 
                  </div>
                </div>            
              </div>          
            </div>          
            <div class="col-md-4">
              <div class="contact-info">
                <div class="contact-info-item">
                  <div class="contact-info-icon">
                    <i class="fas fa-envelope"></i>
                  </div>
                  <div class="contact-info-text">
                    <h2>E-mail</h2>
                    <span>linkcode2@gmail.com</span> 
                    <span>linkcode1@gmail.com</span>
                  </div>
                </div>            
              </div>                
            </div>                
            <div class="col-md-4">
              <div class="contact-info">
                <div class="contact-info-item">
                  <div class="contact-info-icon">
                    <i class="fas fa-clock"></i>
                  </div>
                  <div class="contact-info-text">
                    <h2>visting time</h2>
                    <span>Mon - Fri  8:00 am - 12.00 pm</span>
                    <span>Thu - Mon  4.00 pm - 8.00 pm</span>
                  </div>
                </div>            
              </div>          
            </div>          
          </div>
          <div class="row">
           
            <div class="col-md-4">        
              <div class="contact-page-map">
               <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15132.266344630641!2d73.8500041!3d18.5258929!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c148e492e145%3A0xfa28415f4a85e89!2sLinkcode!5e0!3m2!1sen!2sin!4v1684580508934!5m2!1sen!2sin" width="1000" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
              </div>          
            </div>        
          </div>
        </div>
      </section>
      
      
<%@include file="componet/footer.jsp"%>
</body>
</html>