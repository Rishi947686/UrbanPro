<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>About Us | UrbanPro</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background-color: #1e2d35;
            color: #f0f0f0;
        }

        .header {
            background-color: #0f1a1c;
            padding: 20px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            color: #00ffe7;
            font-size: 24px;
            font-weight: bold;
        }

        .nav a {
            margin-left: 20px;
            color: #f0f0f0;
            text-decoration: none;
            font-weight: 500;
        }

        .nav a:hover,
        .nav a.active {
            color: #00ffe7;
        }

        section {
            padding: 60px 20px;
            max-width: 1000px;
            margin: auto;
        }

        h1, h2 {
            color: #00ffe7;
            margin-bottom: 20px;
            text-align: center;
        }

        p {
            font-size: 18px;
            line-height: 1.7;
            color: #d0d0d0;
            text-align: center;
        }

        .section-box {
            background-color: #263840;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,255,231,0.1);
            margin-bottom: 40px;
        }

        ul {
            text-align: left;
            padding-left: 40px;
            color: #cce;
        }

        .team {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }

        .team-member {
            background-color: #2e4049;
            padding: 20px;
            border-radius: 10px;
            width: 220px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
        }

        .team-member img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .btn {
            display: inline-block;
            padding: 12px 24px;
            background-color: #00ffe7;
            color: #000;
            font-weight: bold;
            border-radius: 30px;
            border: none;
            cursor: pointer;
            transition: background 0.3s;
        }

        .btn:hover {
            background-color: #00ccc5;
        }

        .footer {
            background-color: #0f1a1c;
            color: #bbb;
            text-align: center;
            padding: 20px;
            font-size: 14px;
        }
    </style>
</head>
<body>

<header class="header">
    <div class="logo">UrbanPro</div>
    <nav class="nav">
        <a href="index.jsp">Home</a>
        <a href="services.jsp">Services</a>
        <a href="bookService.jsp">Book Now</a>
        <a href="contact.jsp">Contact</a>
        <a href="feedback.jsp">Feedback</a>
        <a href="about.jsp" class="active">About Us</a>
    </nav>
</header>

<section class="section-box">
    <h1>About UrbanPro</h1>
    <p>UrbanPro is a unified platform designed to connect individuals with trusted urban service professionals in their local area. Whether it's home cleaning, appliance repair, fitness training, academic tutoring, or beauty services, UrbanPro makes it easy to discover, compare, and book quality services—all in one place. With a focus on convenience, reliability, and user satisfaction, we are committed to enhancing everyday living through smart and seamless service access..</p>
</section>

<section class="section-box">
    <h2>Our Journey</h2>
    <p>What started as a simple idea—to bridge the gap between skilled professionals and customers in need—has grown into a thriving ecosystem of services trusted by thousands. Since our inception, UrbanPro has continuously evolved by embracing technology, listening to our users, and adapting to the dynamic needs of urban lifestyles. Today, we stand as a go-to hub for on-demand services, proud of the community we've built and driven by the impact we create..</p>
</section>

<section class="section-box">
    <h2>Our Core Values</h2>
    <ul>
        <li><strong>Trust:</strong> Verified and vetted professionals only.</li>
        <li><strong>Transparency:</strong> Clear prices, clear communication.</li>
        <li><strong>Support:</strong> Friendly assistance whenever needed.</li>
    </ul>
</section>

<section class="section-box">
    <h2>Meet the Team</h2>
    <div class="team">
        <div class="team-member">
            <img src="images/team1.jpg" alt="Riya Sharma">
            <h3>Riya Sharma</h3>
            <p>Founder & CEO</p>
        </div>
        <div class="team-member">
            <img src="images/team2.jpg" alt="Aditya Mehta">
            <h3>Aditya Mehta</h3>
            <p>Operations Lead</p>
        </div>
        <div class="team-member">
            <img src="images/team3.jpg" alt="Neha Raj">
            <h3>Neha Raj</h3>
            <p>Tech Head</p>
        </div>
    </div>
</section>

<section class="section-box" style="text-align: center;">
    <a href="services.jsp" class="btn">Explore Our Services</a>
</section>

<footer class="footer">
    &copy; 2025 UrbanPro. All rights reserved.
</footer>

</body>
</html>
