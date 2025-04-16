<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Feedback | UrbanPro</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
<header class="header fade-in">
    <div class="logo">UrbanPro</div>
    <nav class="nav">
        <a href="index.jsp">Home</a>
        <a href="services.jsp">Services</a>
        <a href="contact.jsp">Contact</a>
    </nav>
</header>

<section class="feedback fade-in">
    <h2>We Value Your Feedback</h2>

    <!-- Updated form: added name attributes, action and method -->
    <form class="feedback-form" action="feedback" method="post">
        <input type="text" name="name" placeholder="Your Name" required />
        <input type="email" name="email" placeholder="Your Email" required />
        <textarea name="message" rows="4" placeholder="Your Feedback" required></textarea>

        <div class="rating">
            <label>Rate Us:</label>
            <div class="stars">
                <input type="radio" name="rating" id="star5" value="5" /><label for="star5">&#9733;</label>
                <input type="radio" name="rating" id="star4" value="4" /><label for="star4">&#9733;</label>
                <input type="radio" name="rating" id="star3" value="3" /><label for="star3">&#9733;</label>
                <input type="radio" name="rating" id="star2" value="2" /><label for="star2">&#9733;</label>
                <input type="radio" name="rating" id="star1" value="1" /><label for="star1">&#9733;</label>
            </div>
        </div>

        <button type="submit" class="btn ripple">Submit</button>
    </form>
</section>

<footer class="footer">
    <p>&copy; 2025 UrbanPro. All rights reserved.</p>
</footer>
</body>
</html>
