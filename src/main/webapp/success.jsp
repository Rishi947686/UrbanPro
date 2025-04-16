<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feedback Successful – UrbanPro</title>
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"
            rel="stylesheet"
    >
    <style>
        /* Theme variables */
        :root {
            --bg-dark: #12232E;
            --bg-container: #1F3A4D;
            --primary: #00E5D4;
            --accent: #00FFE9;
            --text-light: #FFFFFF;
            --text-dark: #000000;
        }

        /* Reset & base */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            background: var(--bg-dark);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: var(--text-light);
        }

        /* Fade‑in animation */
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-20px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        /* Container styling */
        .container {
            background: var(--bg-container);
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 400px;
            width: 90%;
            animation: fadeInDown 0.6s ease-out;
        }

        .container h2 {
            color: var(--primary);
            font-weight: 600;
            margin-bottom: 1rem;
            font-size: 1.75rem;
        }

        .container p {
            font-size: 1rem;
            color: var(--text-light);
            margin-bottom: 1.5rem;
        }

        /* Button styling */
        .btn {
            display: inline-block;
            padding: 0.75rem 2rem;
            font-size: 1rem;
            font-weight: 500;
            color: var(--text-dark);
            background: var(--accent);
            border: none;
            border-radius: 30px;
            text-decoration: none;
            transition: transform 0.2s;
        }
        .btn:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>



<div class="container">
    <h2>Feedback Successful!</h2>
    <p>Thank you for your feedback we really appreciate it.</p>
    <a href="index.jsp" class="btn">Go to Home</a>
</div>

</body>
</html>
