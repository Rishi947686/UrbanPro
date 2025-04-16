package com.urbanpro.urbanpro;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/book-service")
public class bookServiceServlet extends HttpServlet {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/urbanpro";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "panda"; // Replace with your actual password
    private static final Logger logger = Logger.getLogger(bookServiceServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String service = request.getParameter("service");
        String date = request.getParameter("date");
        String instructions = request.getParameter("instructions");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
                String sql = "INSERT INTO bookings (name, email, service_type, booking_date, instructions) VALUES (?, ?, ?, ?, ?)";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, name);
                    stmt.setString(2, email);
                    stmt.setString(3, service);
                    stmt.setDate(4, Date.valueOf(date));
                    stmt.setString(5, instructions);

                    int rows = stmt.executeUpdate();
                    if (rows > 0) {
                        // Set success message
                        request.setAttribute("message", "Booking successful! Your service is booked.");
                        // Forward to result.jsp page
                        request.getRequestDispatcher("result.jsp").forward(request, response);
                    } else {
                        // Set error message
                        request.setAttribute("error", "An error occurred while booking your service. Please try again.");
                        // Forward to result.jsp page
                        request.getRequestDispatcher("result.jsp").forward(request, response);
                    }
                }
            }
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Error occurred while booking service", e);
            // Set error message for exception
            request.setAttribute("error", "An unexpected error occurred. Please try again later.");
            // Forward to result.jsp page
            request.getRequestDispatcher("result.jsp").forward(request, response);
        }
    }
}
