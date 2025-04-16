package com.urbanpro.urbanpro;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Fetch form data from registration form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection con = null;
        PreparedStatement pst = null;
        PreparedStatement checkUser = null;
        ResultSet rs = null;

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to MySQL
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/urbanpro", "root", "panda"
            );

            // Check if username already exists
            checkUser = con.prepareStatement("SELECT * FROM users WHERE username = ?");
            checkUser.setString(1, username);
            rs = checkUser.executeQuery();

            if (rs.next()) {
                // User exists
                response.sendRedirect("register.jsp?status=exists");
            } else {
                // Insert new user
                pst = con.prepareStatement(
                        "INSERT INTO users (first_name, last_name, email, phone, username, password) VALUES (?, ?, ?, ?, ?, ?)"
                );
                pst.setString(1, firstName);
                pst.setString(2, lastName);
                pst.setString(3, email);
                pst.setString(4, phone);
                pst.setString(5, username);
                pst.setString(6, password);

                int row = pst.executeUpdate();
                if (row > 0) {
                    // Store username in session
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);

                    // Redirect to homepage with profile icon
                    response.sendRedirect("index.jsp");
                } else {
                    response.sendRedirect("register.jsp?status=error");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?status=error");
        } finally {
            try {
                if (rs != null) rs.close();
                if (checkUser != null) checkUser.close();
                if (pst != null) pst.close();
                if (con != null) con.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}
