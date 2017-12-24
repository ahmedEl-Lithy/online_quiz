<%@page import="model.userbean"%>
<%
userbean auser = new userbean();
  if(session.getAttribute("userbean")!=null){
    auser=(userbean)request.getSession().getAttribute("userbean");
//   System.out.println("User type value is: "+auser.getUsertype());
    /*if( auser.getUsertype() != 1){
        System.out.println("run");
        response.sendRedirect(request.getContextPath() + "/Logout");}
   */ 
  }else if(session.getAttribute("userbean")==null){
   response.sendRedirect(request.getContextPath() + "/index.jsp"); 
  }
%>

<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Page Title</title>
<link href="include/public.css" rel="stylesheet" type="text/css">
</head>
<body>
  <p><font size="3" color="red">${message1}</font></p>
  <div id="header">
    <h1>Online Quiz</h1>
  </div>
  <div id="main">
  <div id="navigation">
  <ul>
  	<% if(auser.getUsertype()==1){ %>
  	<li><a href="showUser.jsp">Show Users</a></li>
    <li><a href="addUser.jsp">Add user</a></li>
  	<% } %>
    <li><a href="Subject.jsp">Add Subject</a></li>
    <li><a href="quizData.jsp">Show Quiz</a></li>
    <li><a href="Logout">Logout</a></li>
  </ul>
  </div>
  <div id="page">

