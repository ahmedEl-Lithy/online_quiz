<%@ include file= "include/header.jsp" %>

<form action='QuizController' name="addQuiz">
    <input type="hidden" name="action" value="insert" />
    <p><b>Add New Record</b></p>
    <table>
        <tr>
            <td>Quiz name</td>
            <td><input type="text" name="quizName" required/></td>
        </tr>
        <tr>
            <td>subject id</td>
            <td><input type="text" name="subjectId" required/></td>
        </tr>
        <tr>
            <td>Visible</td>
            <td><input type="text" name="visible" required/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Submit" /></td>
        </tr>
    </table>
</form>
<%@ include file= "include/footer.jsp" %>