<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Contact Submitted – UrbanPro</title>
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"
            rel="stylesheet"
    />
    <style>
        :root {
            --bg-dark: #12232E;
            --bg-container: #1F3A4D;
            --primary: #00E5D4;
            --accent: #00FFE9;
            --text-light: #FFFFFF;
            --text-dark: #000000;
        }

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

        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

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

        h2 {
            color: var(--primary);
            font-weight: 600;
            margin-bottom: 1rem;
            font-size: 1.75rem;
        }

        p {
            font-size: 1rem;
            color: var(--text-light);
            margin-bottom: 1.5rem;
        }

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
    <h2>Message Sent!</h2>
    <p>Your contact request has been successfully submitted. We'll get back to you soon!</p>
    <a href="index.jsp" class="btn">Back to Home</a>
</div>

</body>
</html>
