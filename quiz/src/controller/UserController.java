package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.userbean;
import model.userhelper;



/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String redirect="";
            userhelper user = null;
            String action = request.getParameter("action");
            
            if(action.equalsIgnoreCase("delete")){
                int id = Integer.parseInt(request.getParameter("id"));
                try {
                    user = new userhelper();
                    user.deleteuser(id);
                    
                    redirect="showUser.jsp";
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }else if(action.equalsIgnoreCase("Update")){
                userhelper helper = new userhelper();
                String name = request.getParameter("updatename");
                String username = request.getParameter("updateusername");
                String password = request.getParameter("updatepassword");
                String email = request.getParameter("updateemail");
                int usertype =Integer.parseInt(request.getParameter("usertype"));
                userbean updateuser = new userbean(username, password, name, email,usertype);
                updateuser.setId(Integer.parseInt(request.getParameter("id")));
                
                try {
                    helper.updateuser(updateuser);
                    redirect="showUser.jsp";
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                }
                
            }else if(action.equalsIgnoreCase("add")){
                System.out.println("enter");
                String name = request.getParameter("name");
                String password = request.getParameter("password");
                String username = request.getParameter("username");
                String email = request.getParameter("email");
                int usertype =Integer.parseInt(request.getParameter("usertype"));
                userhelper userhelp = new userhelper();
                if(userhelper.check(username)){
                	String message="User Name is already existed !";
                	
        			request.getSession().setAttribute("message1", message);
        			
                    redirect = "addUser.jsp";
                }else{
                    userbean adduser = new userbean(username,password,name,email,usertype);
                
                try {
                    userhelp.insertuser(adduser);
                    redirect="showUser.jsp";
                    
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                }
                }
               
            }
            
            RequestDispatcher rd = request.getRequestDispatcher(redirect);
            rd.forward(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
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
