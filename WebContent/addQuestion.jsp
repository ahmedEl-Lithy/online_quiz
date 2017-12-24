<%@ include file= "include/header.jsp" %>
<%@page import="model.userbean"%>

<%
  String quiz_id=request.getParameter("qz");
  if(quiz_id==null)
  	quiz_id="not found";
%>

<form action='QuestionController' name="addQuestion" method="post">
  <input type="hidden" name="action" value="insert" />
  <p><b>Add New Record</b></p>
  <table>
    <tr>
      <td>Question</td>
      <td><input type="text" name="Question" required/></td>
    </tr>
    <tr>
      <td>Quiz id</td>
      <td><input type="text" name="qz" readonly="readonly" required value="<%=quiz_id%>" ></td>
    </tr>
    <tr>
      <td>answer1</td>
      <td><input type="text" name="answer1" required /></td>
    </tr>
    <tr>
      <td>answer2</td>
      <td><input type="text" name="answer2" required/></td>
    </tr>
    <tr>
      <td>answer3</td>
      <td><input type="text" name="answer3" required/></td>
    </tr>
    <tr>
      <td>answer4</td>
      <td><input type="text" name="answer4" required/></td>
    </tr>
    <tr>
      <td>correctAnswer</td>
      <td>
        <select name="correctanswer">
          <option value="1">Answer1</option>
          <option value="2">Answer2</option>
          <option value="3">Answer3</option>
          <option value="4">Answer4</option>
        </select>
      </td>
    </tr>
    <tr>
      <td></td>
      <td><input type="submit" value="Submit" /></td>
    </tr>
  </table>
</form>
<p><a href="questionData.jsp?qz=<%=quiz_id%>">View-All-Records</a></p>
<%@ include file= "include/footer.jsp" %>