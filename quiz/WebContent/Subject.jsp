<%@ include file= "include/header.jsp" %>

<%@page import="model.SubjectHelper"%>
<%@page import="model.SubjectBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.userbean"%>

<%
  SubjectHelper subH = new SubjectHelper();
  List<SubjectBean> l = subH.getallSubjectbean();
%>

<table border="1" align="center" class="tg">
  <caption> user information</caption>
  <tr>
      <th class="tg-s6z2">Id</th>
      <th class="tg-s6z2">Subject Name</th>
      <th class="tg-s6z2">Action</th>
  </tr>
  <tr>
    <% for (SubjectBean subB : l) { %>
    <td class="tg-031e"><%=subB.getId()%></td>
    <td class="tg-vn4c"><%=subB.getName()%></td>
    <td class="tg-3zav">
      <a href="updateSubject.jsp?Id=<%=subB.getId()%>">Update</a>
      <a href="SubjectController?action=delete&Id=<%=subB.getId()%>">Delete</a>
    </td>
  </tr>
  <% } %>
</table>
<p align="center"><a href="addSubject.jsp">Add Subject</a></p>
<%@ include file= "include/footer.jsp" %>