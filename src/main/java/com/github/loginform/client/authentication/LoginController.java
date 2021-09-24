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
        ServletContext servletContext = getServletContext();
        List<UserRegistration> userRegistrations =
                (List<UserRegistration>) servletContext.getAttribute("users");
        if (checkIfParameterIsUnique(user, userRegistrations)) {
            response.sendRedirect("login-success");
        } else {
            response.sendRedirect("login-error");
        }
    }

    private boolean checkIfParameterIsUnique(User user, List<UserRegistration> users) {
        if (users != null) {
            for (UserRegistration userFromList : users) {
                if (userFromList.getUsername().equals(user.getUsername()) &&
                        userFromList.getPassword().equals(user.getPassword())) {
                    return true;
                }
            }
        }
        return false;
    }

    private User getUserData(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        return new User(username, password);
    }
}
