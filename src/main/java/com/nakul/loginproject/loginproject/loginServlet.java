package com.nakul.loginproject.loginproject;

import com.nakul.daofiles.authDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "Login", value ="/loginServlet")
public class loginServlet extends HttpServlet {

    private static authDao loginDao = new authDao();
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(loginDao.checkLogin(username, password)){
            HttpSession session = request.getSession();
            session.setAttribute("uname", username);
            response.sendRedirect("welcome.jsp");
        }
        else{
            response.sendRedirect("login.jsp?invalid_user");
        }
    }
}
