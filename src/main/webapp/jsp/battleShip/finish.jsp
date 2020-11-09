<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Battle Ship</title>

</head>
<body class="bg-color">
	  	<jsp:include page="../components/navigationBarBattleShip.jsp"></jsp:include>   

	
<div class="container text-info">
	<% String info = (String) session.getAttribute("info");%>
	<h1><%out.print(info); %></h1>
</div>
 
</body>
</html>