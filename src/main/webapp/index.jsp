<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Urban Pro - Urban Services</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #111;
            color: #fff;
            overflow-x: hidden;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .splash {
            height: 100vh;
            background: #000;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            animation: fadeIn 1.5s ease;
        }

        .splash .logo {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .splash button {
            padding: 0.8rem 2rem;
            font-size: 1rem;
            border: none;
            border-radius: 30px;
            background: #fff;
            color: #000;
            cursor: pointer;
            font-weight: 600;
            transition: background 0.3s ease;
        }

        .splash button:hover {
            background: #ddd;
        }

        .main-content {
            display: none;
            animation: fadeIn 1.5s ease;
        }

        .header, .footer {
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #1e1e1e;
        }

        .nav a {
            margin-left: 1rem;
            font-weight: 500;
        }

        .btn {
            padding: 0.7rem 1.5rem;
            border: none;
            background: #fff;
            color: #000;
            font-weight: bold;
            border-radius: 25px;
            cursor: pointer;
        }

        .overview-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 2rem;
            padding: 2rem;
        }

        .overview-card {
            background: #1e1e1e;
            padding: 1rem;
            border-radius: 16px;
            width: 240px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
            transition: transform 0.3s ease;
        }

        .overview-card:hover {
            transform: scale(1.05);
        }

        .overview-card svg {
            width: 50px;
            height: 50px;
            margin-bottom: 10px;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.1); }
            100% { transform: scale(1); }
        }

        .testimonial-container {
            width: 90%;
            max-width: 800px;
            margin: 2rem auto;
            overflow: hidden;
        }

        .testimonial-slide {
            display: flex;
            transition: transform 0.5s ease-in-out;
        }

        .testimonial {
            background: #1e1e1e;
            padding: 1.5rem;
            border-radius: 12px;
            min-width: 100%;
            text-align: center;
        }

        .carousel-controls {
            text-align: center;
            margin-top: 1rem;
        }

        .carousel-controls button {
            background: white;
            margin: 0 0.5rem;
            border-radius: 20px;
            padding: 0.4rem 1rem;
            cursor: pointer;
            border: none;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

<!-- Splash Screen -->
<div class="splash" id="splashScreen">
    <div class="logo">UrbanPro</div>
    <button onclick="startApp()">Get Started</button>
</div>

<!-- Main Content -->
<div class="main-content" id="mainContent">

    <header class="header">
        <div class="logo">UrbanPro</div>
        <nav class="nav">
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
            <a href="services.jsp">Services</a>
            <a href="bookService.jsp">Book Now</a>
            <a href="contact.jsp">Contact</a>
            <a href="feedback.jsp">Feedback</a>
            <a href="about.jsp">About Us</a>
        </nav>
    </header>

    <section class="service-overview">
        <h2 style="text-align: center;">Popular Services</h2>
        <div class="overview-cards">
            <div class="overview-card">
                <svg fill="#fff" viewBox="0 0 64 64"><path d="M12 2h40a2 2 0 012 2v56a2 2 0 01-2 2H12a2 2 0 01-2-2V4a2 2 0 012-2zm6 48h28v4H18v-4zm0-8h28v4H18v-4zm0-8h28v4H18v-4z"/></svg>
                <h3>Home Cleaning</h3>
                <p>Spotless cleaning services for your home or office.</p>
            </div>
            <div class="overview-card">
                <svg fill="#fff" viewBox="0 0 64 64"><path d="M52 8H12a4 4 0 00-4 4v40a4 4 0 004 4h40a4 4 0 004-4V12a4 4 0 00-4-4zm-4 36H16V20h32v24z"/></svg>
                <h3>Electricians</h3>
                <p>Certified electrical experts at your service.</p>
            </div>
            <div class="overview-card">
                <svg fill="#fff" viewBox="0 0 64 64"><path d="M32 2L12 12v40l20 10 20-10V12L32 2zm0 4.92l16 8v33.16l-16 8-16-8V14.92l16-8z"/></svg>
                <h3>Plumbing</h3>
                <p>Fast and reliable plumbers for emergencies and repairs.</p>
            </div>
            <div class="overview-card">
                <svg fill="#fff" viewBox="0 0 64 64"><path d="M32 8a12 12 0 100 24 12 12 0 000-24zm0 28c-13.255 0-24 10.745-24 24h48c0-13.255-10.745-24-24-24z"/></svg>
                <h3>Private Tutoring</h3>
                <p>Find tutors for academics, exams, and language skills.</p>
            </div>
        </div>
        <div style="text-align: center;">
            <a href="services.jsp" class="btn">Explore All Services</a>
        </div>
    </section>

    <section class="testimonials">
        <h2 style="text-align:center;">What Our Users Say</h2>
        <div class="testimonial-container">
            <div class="testimonial-slide" id="testimonialSlide">
                <div class="testimonial">
                    <p>"UrbanPro helped me find a reliable electrician in minutes. Great service!"</p>
                    <div class="author">Rajesh K.</div>
                </div>
                <div class="testimonial">
                    <p>"The home cleaning professionals were punctual and efficient. Highly recommend!"</p>
                    <div class="author">Priya M.</div>
                </div>
                <div class="testimonial">
                    <p>"I booked a math tutor for my son — fantastic experience from start to finish."</p>
                    <div class="author">Amit S.</div>
                </div>
            </div>
            <div class="carousel-controls">
                <button onclick="prevSlide()">&#8592;</button>
                <button onclick="nextSlide()">&#8594;</button>
            </div>
        </div>
    </section>

    <section class="contact" style="text-align: center;">
        <h2>Get in Touch</h2>
        <p>Have questions? Reach out to our support team.</p>
        <a href="contact.jsp" class="btn">Contact Us</a>
    </section>

    <footer class="footer">
        <p>&copy; 2025 UrbanPro. All rights reserved.</p>
    </footer>
</div>

<script>
    function startApp() {
        document.getElementById("splashScreen").style.display = "none";
        document.getElementById("mainContent").style.display = "block";
    }

    let currentSlide = 0;
    const slides = document.getElementById("testimonialSlide");
    const totalSlides = slides.children.length;

    function showSlide(index) {
        slides.style.transform = `translateX(-${index * 100}%)`;
    }

    function nextSlide() {
        currentSlide = (currentSlide + 1) % totalSlides;
        showSlide(currentSlide);
    }

    function prevSlide() {
        currentSlide = (currentSlide - 1 + totalSlides) % totalSlides;
        showSlide(currentSlide);
    }

    setInterval(nextSlide, 4000);
</script>

</body>
</html>
