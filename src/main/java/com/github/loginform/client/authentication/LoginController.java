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
//        response.sendRedirect(request.getContextPath());
        request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = getUserData(request);
        User userFromContext = findUser(request);
        if (user.getUsername().equals(userFromContext.getUsername()) ||
        user.getPassword().equals(userFromContext.getPassword())) {
            response.sendRedirect("login-success");
        } else {
            response.sendRedirect("login-error");
        }
    }

    private User findUser(HttpServletRequest request) {
        String usernameParameter = request.getParameter("username");
        String passwordParameter = request.getParameter("password");
        String username = (String) getServletContext().getAttribute(usernameParameter);
        String password = (String) getServletContext().getAttribute(passwordParameter);
//        return new User(usernameParameter, passwordParameter);
        return new User(username, password);
    }
    
    private User getUserData(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        return new User(username, password);
    }
}
