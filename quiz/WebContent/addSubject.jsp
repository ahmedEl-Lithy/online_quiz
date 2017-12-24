<%@ include file= "include/header.jsp" %>

<form action='SubjectController' name="addSubject">
    <input type="hidden" name="action" value="insert" />
    <p><b>Add New Record</b></p>
    <table>
        <tr>
            <td>Subject name</td>
            <td><input type="text" name="name" required/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Submit" required/></td>
        </tr>
    </table>
</form>
<p><a href="SubjectController?action=listsubject">View-All-Records</a></p>
<%@ include file= "include/footer.jsp" %>
