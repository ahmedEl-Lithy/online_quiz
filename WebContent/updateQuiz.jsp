<%@ include file= "include/header.jsp" %>

<%@page import="model.QuizBean"%>
<%@page import="model.QuizHelper"%>
<%  
  QuizBean quizB = new QuizBean();
  QuizHelper quizH = new QuizHelper();
%>

<form method="POST" action='QuizController' >
  <input type="hidden" name="action" value="update" />
  <%
    String qid = request.getParameter("Id");
    String id = (String)(qid);
    quizB = quizH.getQuizBeanbyid(id);
    int subject_id=Integer.parseInt(quizB.getSubject_id());
    String visible=quizB.getVisible();
  %>
  <table>
    <tr>
      <td>Quiz ID</td>
      <td><input type="text" name="Id" readonly="readonly" value="<%=qid%>"></td>
    </tr>
    <tr>
      <td>Quiz name</td>
      <td><input type="text" name="quizName" required value="<%=quizB.getName()%>" /></td>
    </tr>
    <tr>
      <td>Subject id</td>
      <td><input type="text" name="subjectId" required value="<%=subject_id%>"/></td>
    </tr>
    <tr>
      <td>Visible</td>
      <td><input type="text" name="visible" required value="<%=visible%>"/></td>
    </tr>
    <tr>
      <td></td>
      <td><input type="submit" value="Update" /></td>
    </tr>
  </table>
</form>
<%@ include file= "include/footer.jsp" %>