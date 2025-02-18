package com.nakul.loginproject.loginproject;

import com.nakul.daofiles.authDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "Register", value = "/registerServlet")
public class registerServlet extends HttpServlet {

    private static authDao registerDao = new authDao();
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");
        if(!password.equals(confirmPassword)){
            response.sendRedirect("register.jsp?passwords_don't_match");
            return;
        }

        if(registerDao.addUser(username, email, password))
            response.sendRedirect("login.jsp?registered_successfully");
        else response.sendRedirect("login.jsp?registration_failed");
    }
}
