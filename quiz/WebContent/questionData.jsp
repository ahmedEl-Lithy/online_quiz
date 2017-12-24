<%@ include file= "include/header.jsp" %>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.QuestionBean" %>
<%@page import="model.QuestionHelper" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>

<%  
  QuestionHelper quesH = new QuestionHelper();
  String quiz_id=request.getParameter("qz");
  List<QuestionBean> l = quesH.getallQuestionbeanbyQuizid(quiz_id);
%>

<table border="1" align="center" class="tg" >
  <caption>User Information</caption>
  <tr>
    <th class="tg-s6z2">Id</th>
    <th class="tg-s6z2">Question</th>
    <th class="tg-s6z2">Quiz Id</th>
    <th class="tg-s6z2">answer1</th>
    <th class="tg-s6z2">answer2</th>
    <th class="tg-s6z2">answer3</th>
    <th class="tg-s6z2">answer4</th>
    <th class="tg-s6z2">Correct answer</th>
    <th class="tg-s6z2">action</th>
  </tr>
  <tr>
    <% for (QuestionBean quesB : l) { %>
    <td class="tg-031e"><%=quesB.getId()%></td>
		<td class="tg-vn4c"><%=quesB.getQuestion()%></td>
		<td class="tg-3zav"><%=quesB.getQuiz_id()%></td>
		<td class="tg-031e"><%=quesB.getAnswer1()%></td>
		<td class="tg-vn4c"><%=quesB.getAnswer2()%></td>
		<td class="tg-3zav"><%=quesB.getAnswer3()%></td>
		<td class="tg-031e"><%=quesB.getAnswer4()%></td>
		<td class="tg-vn4c"><%=quesB.getCorrectAnswer()%></td>
    <td class="tg-3zav">
      <a href="updateQuestion.jsp?Id=<%=quesB.getId()%>&qz=<%=quiz_id%>">Update</a>
      <a href="QuestionController?action=delete&Id=<%=quesB.getId()%>">Delete</a>
    </td>
    <% } %>
  </tr>
</table>
<p align="center"><a href="addQuestion.jsp?qz=<%=quiz_id %>">Add Question</a></p>
<%@ include file= "include/footer.jsp" %>