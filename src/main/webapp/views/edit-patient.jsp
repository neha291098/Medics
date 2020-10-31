<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>#1 HTML Login Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
</head>
<body>
 <div class="fixed-header">
        <div class="container">
            <nav>
               <a href="#">Doctor</a>
               
                <a href="#">Book Appointment</a>
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                </nav>
                </div>
             </div>
             
  <div id="form_wrapper" style="height: 500px!important">
        <div id="form_left">
            <img src="<c:url value="/resources/static/images/loginicon.png"/>"/>
        </div>
        <form:form action="savePatient" cssClass="form-horizontal"
method="post" modelAttribute="patient" onsubmit="return validate()" >
        <div id="form_right">
            <h1>	Edit Details</h1>
            <center><div class="input_container">
                <i class="fas fa-user"></i>
                <input   type="text" name="name" id="field_password" class='input_field' value="${patient.name}"/>
            </div></center>
            <center><div class="input_container">
                <i class="fas fa-envelope"></i>
                <input  type="email" name="email" id="field_email" class='input_field' value="${patient.email}"/>
            </div></center>
            
             <center><div class="input_container">
                <i class="fas fa-phone"></i>
                <input  type="number"  name="phoneNum" id="field_password" class='input_field' value="${patient.phoneNum}"/>
            </div></center>
            <div style="display:none">
             <center><div class="input_container">
                <i class="fas fa-lock"></i>
                <input  type="password" name="password" id="field_password" class='input_field' value="${patient.password}"/>
            </div></center></div>
            
            <center><div style="color: red">${error}</div></center>
            <center><input type="submit" value="Save" id='input_submit' class='input_field' style="width:40%" onclick="myalert()"></center>
           </div>
          </form:form>
          </div>
        
      
               
 </body>
</html>            
             
