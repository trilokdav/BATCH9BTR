package com.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.bean.LoginBean;
import com.login.dao.LoginDao;

public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
 
public LoginServlet() {
}
 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
    String email_id = request.getParameter("email_id");
    String password = request.getParameter("password");
 
    System.out.println(email_id);
    System.out.println(password);
    LoginBean loginBean = new LoginBean();
 
    loginBean.setEmail_id(email_id);
    loginBean.setPassword(password);
 
    LoginDao loginDao = new LoginDao();
 
//    try
//    {
        String userValidate = loginDao.authenticateUser(loginBean);
 
//        if(userValidate.equals("L1_role"))
//        {
//            System.out.println("L1's Home");
// 
//            HttpSession session = request.getSession(); //Creating a session
//            session.setAttribute("L1", email_id); //setting session attribute
//            request.setAttribute("email_id", email_id);
// 
//            request.getRequestDispatcher("admin-dash.jsp").forward(request, response);
//        }
//        else if(userValidate.equals("L2_Role"))
//        {
//            System.out.println("L2's Home");
// 
//            HttpSession session = request.getSession();
//            session.setAttribute("L2", email_id);
//            request.setAttribute("email_id", email_id);
// 
//            request.getRequestDispatcher("admin-dash.jsp").forward(request, response);
//        }
//        else if(userValidate.equals("L3_Role"))
//        {
//            System.out.println("L3's Home");
// 
//            HttpSession session = request.getSession();
//            session.setAttribute("L3", email_id);
//            request.setAttribute("email_id", email_id);
// 
//            request.getRequestDispatcher("admin-dash.jsp").forward(request, response);
//        }
        if(userValidate.equals("Employee_Role"))
        {
            System.out.println("Employee's Home");
 
            HttpSession session = request.getSession();
            session.setMaxInactiveInterval(10*60);
            session.setAttribute("Employee", email_id);
            request.setAttribute("email_id", email_id);
 
            request.getRequestDispatcher("user-dash.jsp").forward(request, response);
        }
        else
        {
            System.out.println("Error message = "+userValidate);
            request.setAttribute("errMessage", userValidate);
 
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
//    }
//    catch (IOException e1)
//    {
//        e1.printStackTrace();
//    }
//    catch (Exception e2)
//    {
//        e2.printStackTrace();
//    }
  } //End of doPost()
}
