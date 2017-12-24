package controller;

import model.userbean;
import model.userhelper;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String message;
    	PrintWriter out = response.getWriter();
    	String uname = request.getParameter("username");    
        String pass = request.getParameter("password");
        HttpSession session =request.getSession();
        
        userbean ub = userhelper.isExist(uname, pass);
        System.out.println(ub);
        if(uname == "" && pass==""){
        	ub =null;
        }
          
        if(ub != null && session.getAttribute("userbean")==null)
        {
        	session.setAttribute("userbean", ub );
        	switch(ub.getUsertype()){
                case 1:
                    response.sendRedirect("adminPage.jsp");
                    break;
                case 2:
                    response.sendRedirect("teacher.jsp");//teacher
                    break;
                    /*case 3:
                    response.sendRedirect("");//student
                    break;*/
            }
        }else if(ub ==null){
        	message="Please Enter Correct UserName & Password";
        	out.println(message);
			request.getSession().setAttribute("message", message);
			response.sendRedirect(request.getContextPath() + "/index.jsp");}
        else{
        	response.sendRedirect(request.getContextPath() + "/Logout");
        }
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
