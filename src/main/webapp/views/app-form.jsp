<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Appointment</title>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
<link href="<c:url value='/resources/static/style/appointment-list1.css' />" rel="stylesheet">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/navbar.css" />"
rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
 <style>
select {
    color: var(--icon_color);
    background-color: inherit;
    width: 90%;
    border: none;
    font-size: 1.3rem;
    font-weight: 400;
    padding-left: 30px;
}
#form_right{
padding:3% 3% !important;}
#form_wrapper{
margin-top:90px!important;
    width: 850px!important;}
 </style>
</head>
<body background="<c:url value="/resources/static/images/slider3.jpg"/>"/>
<div class="fixed-header">
        <div class="container">
            <nav>
               <a href="javascript:history.back()">Home</a>
               
             
               <!--  <a href="#">Diagnostics</a>
                <a href="#">Services</a>-->
                </nav>
                </div>
             </div >
    <!-- addition here -->
          
<div id="form_wrapper" style="height: 640px!important">

        <div id="form_left">
          <img src="<c:url value="/resources/static/images/loginicon.png"/>"/>
        </div>
        <form:form id="bookAppointment" action="appAction" method="post" modelAttribute="appForm">
<div id="form_right">
<h1>Book Appointment</h1>

<div style="display:none">
<input type="text" name="patientname" value=${patient.name}>
<input type="text" name="patientId" value=${patient.patientId}>
<input type="text" name="status" value="Applied"/>
<input type="text" name="selectedDate" value="Not Confirmed"/>
<input type="text" name="payment" value="Done"/>
<input type="text" name="doctoraddress" value=""/>
<input type="text" name="doctorname" value=""/>
<input type="text" name="prescription" value=""/></div>


            <center><div class="input_container">
                <i class="fas  fa-stethoscope"></i>
                <input  placeholder="Symptoms" type="text" name="symptom" id="field_password" class='input_field'/>
            </div></center>
            
            <center><div class="input_container">
            <i class="fas fa-user-md"></i>
            <select class="select-style gender" id="specialist" name="specialist" tabindex="5" onkeydown="fetchDoctors()" class='input_field'>

            <option value="select">Select Your specialist</option>
            <option value="Dentist">Dentist</option>
           <option value="Gynacologist">Gynacologist</option>
           <option value="Pediatrician">Pediatrician</option>
			</select>
			</div></center>
			
			<a href="javascript:fetchDoctors()" style="margin-left: 25px!important;">Show doctors of above category</a>
			<div id="doctorType" style="display:none"> </div>
			<p style="margin-left: 25px!important;">Choose 2 dates, out of these Doctor will select one date for appointment.</p>
             <center><div class="input_container">
                <i class="fas fa-calendar"></i>
                <input placeholder="Date 1" type="date"  name="date1"  class='input_field'/>
            </div></center>
             <center><div class="input_container">
                <i class="fas fa-calendar"></i>
                <input  placeholder="Date 2" type="date" name="date2"  class='input_field'/>
            </div></center>
             
           
           <div></div>
            <center><input type="submit" value="Book Appointment" id='input_submit' class='input_field' style="width:70%" ></center>
        </div>
 
        </form:form>
    </div>

<!-- end here -->         
             
             
             
             
<!-- <div  class="form">
<h3>Book Appointment</h3>
<form:form id="bookAppointment" action="appAction" method="post" modelAttribute="appForm">

<div style="display:none">
<input type="text" name="patientname" value=${patient.name}>
<input type="text" name="patientId" value=${patient.patientId}>
<input type="text" name="status" value="Applied"/>
<input type="text" name="selectedDate" value="Not Confirmed"/>
<input type="text" name="payment" value="Pending"/>
<input type="text" name="prescription" value=""/></div>

<label for="birthday">Birthday:</label>
<input type="date" id="dob" name="dob" tabindex="1">

<p class="contact"><label for="symptom">Symptoms</label></p>
<input id="symptom" name="symptom" placeholder="Symptoms" tabindex="3" type="text">

<p class="contact"><label for="gender">Specialization</label></p>
<select class="select-style gender" id="specialist" name=specialist tabindex="5" onkeydown="fetchDoctors()">

            <option value="select">Select Your specialist</option>
            <option value="Dentist">Dentist</option>
           <option value="Gynacologist">Gynacologist</option>
           <option value="Pediatrician">Pediatrician</option>
</select><br><br>

<a href="javascript:fetchDoctors()">Show Doctors</a>
 
<!-- <input id="spacialization" name="specialist" value="Dentist" tabindex="4" readonly="readonly"> -->
     
<!--  <div id="doctorType" style="display:none">            

</div>
<!-- addition here -->


<!-- end addition 
<p class="contact"><label for="street">Address</label></p>
<input id="street" name="doctoraddress" placeholder="Street Address" tabindex="6" type="text">

<p class="contact"><label for="pincode">Pin Code</label></p>
<input id="pincode" name="pincode" placeholder="Enter Pin Code" tabindex="7" type="text">

<p class="contact"><label for="pincode">Date 1</label></p>
<input type="date" id="dob" name="date1" tabindex="8">

<p class="contact"><label for="pincode">Date 2</label></p>
<input type="date" id="dob" name="date2" tabindex="9">
<br>
<input class="buttom" name="submit" id="submit" tabindex="10" value="Book Appointment" type="submit"> 
</form:form>
</div>-->
<script>
function fetchDoctors() {
  var x = document.getElementById("specialist").value;
  //x.value = x.value.toUpperCase();
  if(x=="Dentist"){
	  document.getElementById("doctorType").innerHTML='<center><div class="input_container">'+'<i class="fas fa-user-md"></i>'+
	  '<select class="select-style gender" id="doctorid" name="doctorid" tabindex="5">'+
	  '<option value="select">Select Your Doctor</option>'+
      '<option value="1">Dr. Srivatsa</option>'+
	  '<option value="3">Dr. Aradhna(Dentist)</option>'+
	  '</select></div></center>';
	  document.getElementById("doctorType").style.display="block";
  }
  else if(x=="Gynacologist"){
	  document.getElementById("doctorType").style.display="block";
	  document.getElementById("doctorType").innerHTML='<center><div class="input_container">'+'<i class="fas fa-user-md"></i>'+
	  '<select class="select-style gender" id="doctorid" name="doctorid" tabindex="5">'+
      '<option value="select">Select Your Doctor</option>'+
      '<option value="1">Dr. Srivatsa</option>'+
	  '<option value="3">Dr. Aradhna(gyna)</option>'+
      '</select</div></center>';
  }
  else if(x=="Pediatrician"){
	  document.getElementById("doctorType").style.display="block";
	  document.getElementById("doctorType").innerHTML='<center><div class="input_container">'+'<i class="fas fa-user-md"></i>'+
	  '<select class="select-style gender" id="doctorid" name="doctorid" tabindex="5">'+
	  '<option value="select">Select Your Doctor</option>'+
      '<option value="1">Dr. Srivatsa</option>'+
      '<option value="3">Dr. Aradhna(pedia)</option>'+
      '</select></div></center>';
  }
}
</script>

</body>
</html>