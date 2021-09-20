package com.github.loginform.client.authentication;

import com.github.loginform.domain.api.UserRegistration;
import com.github.loginform.domain.user.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = getUserData(request);
        String stringUser = findUser(request);
        if (user.getUsername().equals(stringUser)) {
            response.sendRedirect("signup-success");
        } else {
            response.sendRedirect("signup-error");
        }
    }

    private String findUser(HttpServletRequest request) {
        String username = request.getParameter("username");
        String stringUser;
        stringUser = (String) getServletContext().getAttribute(username);
        return stringUser;
    }
    
    private User getUserData(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        return new User(username, password);
    }
}
