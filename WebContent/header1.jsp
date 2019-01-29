<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
  <title>Roomer - <%= (String)session.getAttribute("fullName") %></title>
<link rel="stylesheet" type="text/css" href="http://localhost:8090/OyoRooms/bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="http://localhost:8090/OyoRooms/css/styles.css"/>
  <link rel="stylesheet" type="text/js" href="http://localhost:8090/OyoRooms/bootstrap/js/bootstrap.min.js"/>
  <link rel="stylesheet" type="text/css" href="http://localhost:8090/OyoRooms/fontawesome/all.min.css">
</head>
<body>
<% if(session.getAttribute("fullName") == null)
	  
response.sendRedirect("error.html");
	  %>

	<div class="navbar-header">
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Home.jsp">
    <img src="http://localhost:8090/OyoRooms/icons/rockrms-brands.svg" width="30" height="30" class="d-inline-block align-top">
    Roomer
  </a>
  
 <ul class="nav navbar-nav ml-auto">

 <li class="nav-item"><a class="nav-link" href="LogOut"><%= (new java.util.Date(session.getCreationTime()))%>  |  <%= (String)session.getAttribute("fullName") %> | LogOut</a></li>
 </ul>
</nav>
 </div>
  