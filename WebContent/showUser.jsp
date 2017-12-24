<%@ include file= "home.jsp" %>
<%@ include file= "include/header.jsp" %>

<%@page import="model.userhelper"%>
<%@page import="java.util.ArrayList"%>

<h1>All users</h1>
<% 
  userhelper user = new userhelper();
  ArrayList<userbean> users=new ArrayList<userbean>();
  users = user.selectall();
%>
<table border="1">
  <tr>
    <th>id</th>
    <th>name</th>
    <th>user name</th>
    <th>password</th>
    <th>email</th>
    <th>user type</th>
    <th colspan="2">operation</th>
  </tr>
  <%for(userbean l:users){%>
  <tr>
    <td><%=l.getId()%></td>
    <td><%=l.getName()%></td>
    <td><%=l.getUsername()%></td>
    <td><%=l.getPassword()%></td>
    <td><%=l.getEmail()%></td>
    <td><%=l.getUsertype()%></td>
    <td><a href="updateUser.jsp?id=<%=l.getId()%>">Update</a></td>
    <td><a href="UserController?action=delete&id=<%=l.getId()%>">Delete</a></td>
  </tr>
  <%}%>
</table>
<%@ include file= "include/footer.jsp" %>