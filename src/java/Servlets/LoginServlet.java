/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;


import EJB.UserBean;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
    @EJB
    private UserBean userBean;
    Boolean check=false;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
      String userName = request.getParameter("userName");
      String password = request.getParameter("password");
     HttpSession session = request.getSession();
            
           check = userBean.checkUser(userName,password);
         System.out.println("check is"+check+" "+userName);
           if(check)     
           {
              session.setAttribute("loginName", userName);
              request.getRequestDispatcher("list.jsp").forward(request, response);
           }
           else
           {
               request.setAttribute("error", "Wrong Username or Password");
               request.getRequestDispatcher("error.jsp").forward(request, response);
           }
        }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


