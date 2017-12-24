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
  <div id="page" style="float: none;">

<form method="post" action="Login">
  <center>
  <table border="1" width="30%" cellpadding="3">
    <thead>
      <tr>
        <th colspan="2">Login Here</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>User Name</td>
        <td><input type="text" name="username" value="" required/></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input type="password" name="password" value="" required/></td>
      </tr>
      <tr>
        <td><input type="submit" value="Login" /></td>
      </tr>
    </tbody>
  </table>
  </center>
</form>
<%@ include file= "include/footer.jsp" %>