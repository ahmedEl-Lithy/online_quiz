<%@ include file= "home.jsp" %>
<%@ include file= "include/header.jsp" %>

<h1>Add User</h1>
<form action="UserController" method="post">
<input type="hidden" name="action" value="add" />
<table>
  <tr>
    <td>name:</td>
    <td><input type="text" name="name" required></td>
  </tr>
  <tr>
    <td>username:</td>
    <td><input type="text" name="username" required></td>
  </tr>  
  <tr>
    <td>password:</td>
    <td><input type="password" name="password" required></td>
  </tr>
  <tr>
    <td>email:</td>
    <td><input type="text" name="email" required></td>
  </tr>
  <tr>
    <td>usertype:</td>
    <td>
      <select name="usertype">
        <option value="1"> Admin</option>
        <option value="2" >Teacher</option>
        <option value="3" >Student</option>
      </select>
    </td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" value="submit"></td>
  </tr> 
</table>
</form>
<form method="post" action="showUser.jsp">
<input type="submit" value="show all">
</form>
<%@ include file= "include/footer.jsp" %>
