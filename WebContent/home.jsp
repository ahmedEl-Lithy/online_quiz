<%@page import="model.userbean"%>

 <%
 userbean ub = new userbean();
 if(session.getAttribute("userbean")!=null){
	 ub=(userbean)request.getSession().getAttribute("userbean");
	session.setAttribute("userbean", ub );
	System.out.println(ub.getUsertype());
	switch(ub.getUsertype()){
       case 1:
           response.sendRedirect("adminPage.jsp");
           break;
       case 2:
           response.sendRedirect("teacher.jsp");//teacher
           break;
	}
 }
            
%>