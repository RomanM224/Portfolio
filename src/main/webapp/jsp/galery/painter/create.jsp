<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" name="viewport" content="text/html; charset=ISO-8859-1 width=device-width, initial-scale=1">
    <title>Create Painter</title>
    
    <spring:url value="/resources/img/icon.png" var="icon" />
	<link rel="icon" href="${icon}" type="image/gif" sizes="32x32">
	
    <spring:url value="/resources/css/stylesGallery.css" var="stylesGallery" />
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
    <spring:url value="/resources/js/jquery-3.3.1.min.js" var="jquery" />

	
    <link href="${stylesGallery}" rel="stylesheet">
    <link href="${bootstrapCss}" rel="stylesheet">
    <script src="${bootstrapJs}" type="text/javascript"></script>
    <script src="${jquery}" type="text/javascript"></script>
    
  </head>
  <spring:url value="/resources/img/galery_background.jpg" var="galery_background" />
  <body class="bg-image-galery" style="background-image: url('${galery_background}');">
  <%
  String info = (String) request.getAttribute("info");
  %>
  	<jsp:include page="../../components/navigationBarGalery.jsp"></jsp:include>   
  	
  	<div class="container mt-5">
		<form class="form-group" action="../painter/create" method="post">
			<label for="firstName">Input Painter first name: </label> 
			<input class="form-control col-xl-4 col-lg-6 col-md-8 col-10 <%if(info != null && info.equals("First Name is invalid")){out.print("is-invalid");} %>" id="firstName" type="text" name="firstName" />
			
			<label for="lastName">Input Painter last name: </label> 
			<input class="form-control col-xl-4 col-lg-6 col-md-8 col-10  <%if(info != null && info.equals("Last Name is invalid")){out.print("is-invalid");} %>" id="lastName" type="text" name="lastName" />
			
			<label for="exampleFormControlTextarea1">Painter Info</label>
    		<textarea class="form-control col-xl-4 col-lg-6 col-md-8 col-10  <%if(info != null && info.equals("Info is invalid")){out.print("is-invalid");} %>" id="exampleFormControlTextarea1" name="painterInfo" rows="4"></textarea>
			
			<input class="btn btn-primary mt-2" type="submit" value="Create Painter" />
		</form>
	<%
	if(info != null){
	%>
	<p class="container m-2 text-danger"><b><% out.print(info);%></b></p>
	<%} %>
	</div>

  </body>
</html>
