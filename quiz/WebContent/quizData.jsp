<%@ include file= "include/header.jsp" %>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.QuizBean" %>
<%@page import="model.QuizHelper" %>

<%  
  QuizHelper quizH = new QuizHelper();
  List<QuizBean> l = quizH.getallQuizbean();
%>
        
<table border="1" align="center" class="tg">
  <caption>User Information</caption>
  <tr>
    <th class="tg-s6z2">Id</th>
    <th class="tg-s6z2">Quiz Name</th>
    <th class="tg-s6z2">Subject ID</th>
    <th class="tg-s6z2">Visible</th>
    <th class="tg-s6z2">Action</th>
  </tr>
    <% for (QuizBean quizB : l) { %>
  <tr>
    <td class="tg-031e"><%=quizB.getId()%></td>
		<td class="tg-vn4c"><a href="questionData.jsp?qz=<%=quizB.getId()%>"><%=quizB.getName()%></a></td>
		<td class="tg-3zav"><%=quizB.getSubject_id()%></td>
		<td class="tg-031e"><%=quizB.getVisible()%></td>
    <td class="tg-vn4c">
      <a href="updateQuiz.jsp?Id=<%=quizB.getId()%>">Update</a>
      <a href="QuizController?action=delete&Id=<%=quizB.getId()%>">Delete</a>
    </td>
  </tr>
    <% } %>
</table>
<p align="center"><a href="addQuiz.jsp">Add Quiz</a></p>
<%@ include file= "include/footer.jsp" %>