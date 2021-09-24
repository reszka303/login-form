package com.github.loginform.client.signup;

import com.github.loginform.domain.api.UserRegistration;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/signup")
public class SignupController extends HttpServlet {

    @Override
    public void init() {
        getServletContext().setAttribute("users", new ArrayList<UserRegistration>());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserRegistration userRegistration = getUserData(request);
        List<UserRegistration> users = (List<UserRegistration>) getServletContext().getAttribute("users");
        if (checkIfParameterIsUnique(userRegistration, users)) {
            response.sendRedirect("signup-success");
            users.add(userRegistration);
        } else {
            response.sendRedirect("signup-error");
        }
    }

    private boolean checkIfParameterIsUnique(UserRegistration userRegistration, List<UserRegistration> users) {
        for (UserRegistration user : users) {
            if (user.getUsername().equals(userRegistration.getUsername()) ||
            user.getEmail().equals(userRegistration.getEmail())) {
                return false;
            }
        }
        return true;
    }

    private UserRegistration getUserData(HttpServletRequest request) {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        return new UserRegistration(username, email, password);
    }
}
