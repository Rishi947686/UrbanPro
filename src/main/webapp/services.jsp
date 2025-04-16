<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Our Services | UrbanPro</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
<header class="header fade-in">
    <div class="logo">UrbanPro</div>
    <nav class="nav">
        <a href="index.jsp">Home</a>
        <a href="contact.jsp">Contact</a>
        <a href="feedback.jsp">Feedback</a>
    </nav>
</header>

<section class="services fade-in">
    <h2>Explore Our Services</h2>
    <div class="service-cards">
        <div class="card slide-in">
            <h3>Home Cleaning</h3>
            <p>Get professional home and office cleaning by trusted staff.</p>
            <a href="bookService.jsp?service=Home%20Cleaning" class="btn ripple">Book Now</a>
        </div>
        <div class="card slide-in">
            <h3>Electricians</h3>
            <p>Electrical repair, installation, and maintenance at your convenience.</p>
            <a href="bookService.jsp?service=Electricians" class="btn ripple">Book Now</a>
        </div>
        <div class="card slide-in">
            <h3>Plumbing</h3>
            <p>Quick and reliable solutions for all plumbing issues.</p>
            <a href="bookService.jsp?service=Plumbing" class="btn ripple">Book Now</a>
        </div>
        <div class="card slide-in">
            <h3>Private Tutoring</h3>
            <p>Learn from experienced tutors for academic and competitive success.</p>
            <a href="bookService.jsp?service=Private%20Tutoring" class="btn ripple">Book Now</a>
        </div>
    </div>
</section>

<footer class="footer">
    <p>&copy; 2025 UrbanPro. All rights reserved.</p>
</footer>
</body>
</html>
