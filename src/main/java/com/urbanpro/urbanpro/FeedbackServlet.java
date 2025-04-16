package com.urbanpro.urbanpro;
import java.io.IOException;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/feedback")
public class FeedbackServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/urbanpro";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "panda";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        String rating = request.getParameter("rating");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String sql = "INSERT INTO feedback (name, email, message, rating) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, message);
            stmt.setString(4, rating);

            stmt.executeUpdate();

            stmt.close();
            conn.close();

            // Redirect or display a thank-you message
            response.sendRedirect("success.jsp");

        } catch (Exception e) {
            throw new ServletException("Feedback submission failed", e);
        }
    }
}
