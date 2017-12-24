<%@ include file= "include/header.jsp" %>

<%@page import="model.QuestionBean" %>
<%@page import="model.QuestionHelper" %>

<%
  QuestionBean quesB = new QuestionBean();
  QuestionHelper quesH = new QuestionHelper();
%>
<form method="POST" action='QuestionController' >
    <input type="hidden" name="action" value="update" /> 
    <%
      String qid = request.getParameter("Id");
      String qzId = request.getParameter("qz");

      String id = (String)(qid);
      quesB = quesH.getQuestionBeanbyid(qid);
      String Correct_Answer=quesB.getCorrectAnswer();        
    %>
    <input type="hidden" name="Id" value="<%=quesB.getId() %>" />
    <table>
      <tr>
        <td>Question</td>
        <td><input type="text" name="Question" required value="<%=quesB.getQuestion()%>"/></td>
      </tr>
      <tr>
        <td>Quiz id</td>
        <td><input type="text" name="QuizId" required value="<%=qzId%>" /></td>
      </tr>
      <tr>
        <td>answer1</td>
        <td><input type="text" name="answer1" required  value="<%=quesB.getAnswer1()%>" /></td>
      </tr>
      <tr>
        <td>answer2</td>
        <td><input type="text" name="answer2" required value="<%=quesB.getAnswer2()%>" /></td>
      </tr>
      <tr>
        <td>answer3</td>
        <td><input type="text" name="answer3" required value="<%=quesB.getAnswer3()%>" /></td>
      </tr>
      <tr>
        <td>answer4</td>
        <td><input type="text" name="answer4" required value="<%=quesB.getAnswer4()%>" /></td>
      </tr>
      <tr>
        <td>correctAnswer</td>
        <td>
        <select name="correctanswer">
          <option value="1"<%if(Correct_Answer.equals(quesB.getAnswer1())){%>selected<%} %>>Answer1</option>
          <option value="2"<%if(Correct_Answer.equals(quesB.getAnswer2())){%>selected<%} %>>Answer2</option>
          <option value="3"<%if(Correct_Answer.equals(quesB.getAnswer3())){%>selected<%} %>>Answer3</option>
          <option value="4"<%if(Correct_Answer.equals(quesB.getAnswer4())){%>selected<%} %>>Answer4</option>
        </select>
        </td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Submit" /></td>
      </tr>
    </table>
</form>
<%@ include file= "include/footer.jsp" %>