package com.urbanpro.urbanpro;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false); // prevent creating new session
        if (session != null) {
            session.invalidate(); // clear session
        }
        response.sendRedirect("login.jsp"); // redirect to login
    }
}
