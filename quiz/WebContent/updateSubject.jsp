<%@ include file= "include/header.jsp" %>

<%@page import="model.SubjectBean"%>
<%@page import="model.SubjectHelper"%>

<%  
  SubjectBean subB = new SubjectBean();
  SubjectHelper subH = new SubjectHelper();
%>

<form method="POST" action='SubjectController' >
  <input type="hidden" name="action" value="update" />
  <%
    String sid = request.getParameter("Id");
    String id = (String)(sid);
    subB = subH.getSubjectBeanbyid(id);
  %>
  <table>
    <tr>
      <td>Subject ID</td>
      <td><input type="text" name="subjectId" readonly="readonly" value="<%=subB.getId()%>"></td>
    </tr>
    <tr>
      <td>subject name</td>
      <td><input type="text" name="subName" required value="<%=subB.getName()%>"/></td>
    </tr>
    <tr>
      <td></td>
      <td><input type="submit" value="Update" required/></td>
    </tr>
  </table>
</form>
<%@ include file= "include/footer.jsp" %>
