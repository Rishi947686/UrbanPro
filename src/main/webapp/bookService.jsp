<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book a Service | UrbanPro</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
<header class="header fade-in">
    <div class="logo">UrbanPro</div>
    <nav class="nav">
        <a href="index.jsp">Home</a>
        <a href="services.jsp">Services</a>
        <a href="contact.jsp">Contact</a>
        <a href="feedback.jsp">Feedback</a>
    </nav>
</header>

<section class="booking fade-in">
    <h2>Book a Service</h2>
    <form class="booking-form" action="book-service" method="post">
        <input type="text" name="name" placeholder="Your Name" required />
        <input type="email" name="email" placeholder="Your Email" required />

        <!-- Dropdown for service selection -->
        <select name="service" required>
            <option value="" disabled selected>Select a Service</option>
            <option value="Home Cleaning">Home Cleaning</option>
            <option value="Electricians">Electricians</option>
            <option value="Plumbing">Plumbing</option>
            <option value="Private Tutoring">Private Tutoring</option>
        </select>

        <input type="date" name="date" required />
        <textarea name="instructions" rows="3" placeholder="Any specific instructions?"></textarea>
        <button type="submit" class="btn ripple">Confirm Booking</button>
    </form>
</section>

<footer class="footer">
    <p>&copy; 2025 UrbanPro. All rights reserved.</p>
</footer>
</body>
</html>
