<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us | UrbanPro</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
<header class="header fade-in">
    <div class="logo">UrbanPro</div>
    <nav class="nav">
        <a href="index.jsp">Home</a>
        <a href="services.jsp">Services</a>
        <a href="feedback.jsp">Feedback</a>
    </nav>
</header>

<section class="contact fade-in">
    <h2>Contact Us</h2>
    <p>We're here to help you with any queries or service requests.</p>

    <!-- Updated form -->
    <form class="contact-form" action="contact" method="post">
        <input type="text" name="name" placeholder="Your Name" required />
        <input type="email" name="email" placeholder="Your Email" required />
        <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
        <button type="submit" class="btn ripple">Send Message</button>
    </form>
</section>

<footer class="footer">
    <p>&copy; 2025 UrbanPro. All rights reserved.</p>
</footer>

</body>
</html>
